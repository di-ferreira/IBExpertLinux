unit ibsqlutil;
{ Utilitarios de SQL: separacao de comandos e classificacao sintatica.

  Regras cobertas:
  - terminador configuravel (padrao ';');
  - literais 'strings' com '' escapado;
  - identificadores "quoted";
  - comentarios de linha (--) e de bloco (/* */, inclusive aninhados);
  - bloco SET TERM, usado por triggers e procedures. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes;

{ Divide um script em comandos, respeitando strings, comentarios e SET TERM. }
function SplitStatements(const AScript: string): TStatementArray;

{ Classifica o primeiro comando efetivo (ignora comentarios iniciais). }
function DetectStatementKind(const ASQL: string): TStatementKind;

{ Verdadeiro quando o comando devolve conjunto de resultados. }
function StatementReturnsRows(AKind: TStatementKind): Boolean;

{ Remove espacos e comentarios do inicio, para exibicao. }
function StripLeadingTrivia(const ASQL: string): string;

{ Extrai o texto de um SET TERM, se o comando for exatamente isso. }
function TryParseSetTerm(const ACommand: string; out ANewTerminator: string): Boolean;

type
  { O que oferecer no autocompletar do editor SQL. }
  TCompletionKind = (ckNone, ckKeyword, ckRelation, ckField);

  TCompletionRequest = record
    Kind: TCompletionKind;
    { Palavra ja digitada antes do cursor (pode ser vazia). }
    Prefix: string;
    { Apelido ou tabela antes do ponto, em "alias.campo". }
    Qualifier: string;
  end;

{ Analisa o texto do comando ate o cursor e decide o contexto. }
function CompletionRequestAt(const AText: string): TCompletionRequest;

{ Tabelas e views citadas em FROM/JOIN/UPDATE/INTO, sem repeticoes. }
function ReferencedRelations(const AText: string): TStringArray;

{ Resolve o apelido de "alias.campo" para o nome da relacao. }
function ResolveRelationQualifier(const AText, AQualifier: string): string;

{ Devolve o identificador pronto para uso no SQL (aspas quando necessario). }
function QuoteIdentifier(const AName: string): string;

{ Palavras reservadas e comandos do SQL do Firebird. }
function SqlKeywords: TStringArray;

{ Funcoes internas mais usadas. }
function SqlFunctions: TStringArray;

{ Verdadeiro quando AWord e uma palavra reservada do SQL. }
function IsSqlKeyword(const AWord: string): Boolean;

implementation

type
  TScanState = (ssNormal, ssString, ssQuotedIdent, ssLineComment, ssBlockComment);

function IsSpaceChar(C: Char): Boolean;
begin
  Result := (C = ' ') or (C = #9) or (C = #10) or (C = #13);
end;

function StripLeadingTrivia(const ASQL: string): string;
var
  I, N: Integer;
  InBlock: Boolean;
begin
  I := 1;
  N := Length(ASQL);
  while I <= N do
  begin
    if IsSpaceChar(ASQL[I]) then
      Inc(I)
    else if (ASQL[I] = '-') and (I < N) and (ASQL[I + 1] = '-') then
    begin
      while (I <= N) and (ASQL[I] <> #10) do
        Inc(I);
    end
    else if (ASQL[I] = '/') and (I < N) and (ASQL[I + 1] = '*') then
    begin
      InBlock := True;
      Inc(I, 2);
      while (I <= N) and InBlock do
      begin
        if (ASQL[I] = '*') and (I < N) and (ASQL[I + 1] = '/') then
        begin
          Inc(I, 2);
          InBlock := False;
        end
        else
          Inc(I);
      end;
    end
    else
      Break;
  end;
  Result := Trim(Copy(ASQL, I, MaxInt));
end;

function FirstWord(const ASQL: string): string;
var
  S: string;
  I: Integer;
begin
  S := StripLeadingTrivia(ASQL);
  I := 1;
  while (I <= Length(S)) and (S[I] in ['A'..'Z', 'a'..'z', '_']) do
    Inc(I);
  Result := UpperCase(Copy(S, 1, I - 1));
end;

function DetectStatementKind(const ASQL: string): TStatementKind;
var
  S, W1, W2: string;
  I: Integer;
begin
  S := StripLeadingTrivia(ASQL);
  if S = '' then
    Exit(skEmpty);

  W1 := FirstWord(S);
  Result := skOther;

  if W1 = 'SELECT' then
    Exit(skSelect);

  if W1 = 'WITH' then
    Exit(skSelect);

  if W1 = 'EXECUTE' then
  begin
    { Procura a segunda palavra depois de EXECUTE. }
    I := Pos('EXECUTE', UpperCase(S)) + Length('EXECUTE');
    while (I <= Length(S)) and IsSpaceChar(S[I]) do
      Inc(I);
    W2 := UpperCase(Copy(S, I, 5));
    if W2 = 'BLOCK' then
      Exit(skExecBlock);
    Exit(skSelect); { EXECUTE PROCEDURE devolve uma linha }
  end;

  if (W1 = 'INSERT') or (W1 = 'UPDATE') or (W1 = 'DELETE') or (W1 = 'MERGE') then
    Exit(skDml);

  if (W1 = 'CREATE') or (W1 = 'ALTER') or (W1 = 'DROP') or (W1 = 'RECREATE') or
     (W1 = 'COMMENT') or (W1 = 'GRANT') or (W1 = 'REVOKE') or (W1 = 'SET') or
     (W1 = 'CONNECT') or (W1 = 'COMMIT') or (W1 = 'ROLLBACK') or
     (W1 = 'DECLARE') or (W1 = 'SAVEPOINT') or (W1 = 'RELEASE') or
     (W1 = 'SHOW') or (W1 = 'DESCRIBE') then
    Exit(skDdl);
end;

function StatementReturnsRows(AKind: TStatementKind): Boolean;
begin
  Result := AKind in [skSelect, skExecBlock];
end;

function TryParseSetTerm(const ACommand: string; out ANewTerminator: string): Boolean;
var
  S, Rest: string;
  I: Integer;
begin
  Result := False;
  ANewTerminator := '';
  S := Trim(ACommand);
  if UpperCase(Copy(S, 1, 8)) <> 'SET TERM' then
    Exit;
  Rest := Trim(Copy(S, 9, MaxInt));
  if Rest = '' then
    Exit;
  I := 1;
  while (I <= Length(Rest)) and not IsSpaceChar(Rest[I]) do
    Inc(I);
  ANewTerminator := Copy(Rest, 1, I - 1);
  Result := ANewTerminator <> '';
end;

function SplitStatements(const AScript: string): TStatementArray;
var
  I, N, Count: Integer;
  Buf: string;
  State: TScanState;
  Term: string;
  Depth: Integer;
  NewTerm: string;
  Candidate: string;

  procedure Flush;
  var
    T: string;
    Stmt: TStatement;
  begin
    T := Trim(Buf);
    Buf := '';
    if T = '' then
      Exit;
    Stmt.SQL := T;
    Stmt.Kind := DetectStatementKind(T);
    if Stmt.Kind = skEmpty then
      Exit;
    Inc(Count);
    if Count > Length(Result) then
      SetLength(Result, Count * 2);
    Result[Count - 1] := Stmt;
  end;

begin
  Result := nil;
  Count := 0;
  SetLength(Result, 8);

  I := 1;
  N := Length(AScript);
  Buf := '';
  State := ssNormal;
  Term := ';';
  Depth := 0;

  while I <= N do
  begin
    case State of
      ssString:
        begin
          Buf := Buf + AScript[I];
          if AScript[I] = '''' then
          begin
            if (I < N) and (AScript[I + 1] = '''') then
            begin
              Buf := Buf + AScript[I + 1];
              Inc(I);
            end
            else
              State := ssNormal;
          end;
          Inc(I);
        end;

      ssQuotedIdent:
        begin
          Buf := Buf + AScript[I];
          if AScript[I] = '"' then
            State := ssNormal;
          Inc(I);
        end;

      ssLineComment:
        begin
          Buf := Buf + AScript[I];
          if AScript[I] = #10 then
            State := ssNormal;
          Inc(I);
        end;

      ssBlockComment:
        begin
          Buf := Buf + AScript[I];
          if (AScript[I] = '/') and (I < N) and (AScript[I + 1] = '*') then
          begin
            Inc(Depth);
            Buf := Buf + AScript[I + 1];
            Inc(I, 2);
          end
          else if (AScript[I] = '*') and (I < N) and (AScript[I + 1] = '/') then
          begin
            Dec(Depth);
            Buf := Buf + AScript[I + 1];
            Inc(I, 2);
            if Depth <= 0 then
              State := ssNormal;
          end
          else
            Inc(I);
        end;

      ssNormal:
        begin
          { SET TERM so vale no inicio de um comando. }
          if (AScript[I] in ['s', 'S']) and (Length(Buf) < 200) and
             (Trim(Buf) = '') and
             (UpperCase(Copy(AScript, I, 8)) = 'SET TERM') then
          begin
            { Consome a linha inteira. }
            Candidate := '';
            while (I <= N) and (AScript[I] <> #10) and (AScript[I] <> #13) do
            begin
              Candidate := Candidate + AScript[I];
              Inc(I);
            end;
            while (I <= N) and ((AScript[I] = #10) or (AScript[I] = #13)) do
              Inc(I);
            if TryParseSetTerm(Candidate, NewTerm) then
              Term := NewTerm;
            { O SET TERM nao e enviado ao servidor. }
            Buf := '';
            Continue;
          end;

          if (AScript[I] = '''') then
          begin
            State := ssString;
            Buf := Buf + AScript[I];
            Inc(I);
          end
          else if (AScript[I] = '"') then
          begin
            State := ssQuotedIdent;
            Buf := Buf + AScript[I];
            Inc(I);
          end
          else if (AScript[I] = '-') and (I < N) and (AScript[I + 1] = '-') then
          begin
            State := ssLineComment;
            Buf := Buf + AScript[I] + AScript[I + 1];
            Inc(I, 2);
          end
          else if (AScript[I] = '/') and (I < N) and (AScript[I + 1] = '*') then
          begin
            State := ssBlockComment;
            Depth := 1;
            Buf := Buf + AScript[I] + AScript[I + 1];
            Inc(I, 2);
          end
          else if Copy(AScript, I, Length(Term)) = Term then
          begin
            Inc(I, Length(Term));
            Flush;
          end
          else
          begin
            Buf := Buf + AScript[I];
            Inc(I);
          end;
        end;
    end;
  end;

  Flush;
  SetLength(Result, Count);
end;

{ --------------------------------------------------------------------------
  Autocompletar (Code Insight): contexto, relacoes citadas e identificadores.
  -------------------------------------------------------------------------- }

type
  TTokenKind = (tkWord, tkQuoted, tkPunct, tkString);

function IsIdentChar(C: Char): Boolean;
begin
  Result := C in ['A'..'Z', 'a'..'z', '0'..'9', '_', '$', '#'];
end;

{ Le o proximo token, pulando espacos, comentarios de linha e de bloco. }
function NextToken(const S: string; var P: Integer; out Tok: string;
  out Kind: TTokenKind): Boolean;
var
  Start: Integer;
begin
  while P <= Length(S) do
  begin
    if S[P] <= ' ' then
      Inc(P)
    else if (S[P] = '-') and (P < Length(S)) and (S[P + 1] = '-') then
    begin
      Inc(P, 2);
      while (P <= Length(S)) and (S[P] <> #10) do
        Inc(P);
    end
    else if (S[P] = '/') and (P < Length(S)) and (S[P + 1] = '*') then
    begin
      Inc(P, 2);
      while (P <= Length(S)) and
            not ((S[P] = '*') and (P < Length(S)) and (S[P + 1] = '/')) do
        Inc(P);
      if P <= Length(S) then
        Inc(P, 2);
    end
    else
      Break;
  end;

  Result := P <= Length(S);
  if not Result then
  begin
    Tok := '';
    Kind := tkPunct;
    Exit;
  end;

  Tok := '';
  Kind := tkPunct;

  case S[P] of
    '''':
      begin
        Kind := tkString;
        Inc(P);
        while P <= Length(S) do
        begin
          if S[P] = '''' then
          begin
            if (P < Length(S)) and (S[P + 1] = '''') then
            begin
              Tok := Tok + '''';
              Inc(P, 2);
            end
            else
            begin
              Inc(P);
              Break;
            end;
          end
          else
          begin
            Tok := Tok + S[P];
            Inc(P);
          end;
        end;
      end;

    '"':
      begin
        Kind := tkQuoted;
        Inc(P);
        while P <= Length(S) do
        begin
          if S[P] = '"' then
          begin
            if (P < Length(S)) and (S[P + 1] = '"') then
            begin
              Tok := Tok + '"';
              Inc(P, 2);
            end
            else
            begin
              Inc(P);
              Break;
            end;
          end
          else
          begin
            Tok := Tok + S[P];
            Inc(P);
          end;
        end;
      end;

  else
    if IsIdentChar(S[P]) then
    begin
      Kind := tkWord;
      Start := P;
      while (P <= Length(S)) and IsIdentChar(S[P]) do
        Inc(P);
      Tok := Copy(S, Start, P - Start);
    end
    else
    begin
      Tok := S[P];
      Inc(P);
    end;
  end;
end;

{ Palavras que encerram uma lista de relacoes (nao podem ser apelido). }
function IsClauseWord(const AWord: string): Boolean;
begin
  Result := (AWord = 'SELECT') or (AWord = 'FROM') or (AWord = 'WHERE') or
    (AWord = 'GROUP') or (AWord = 'ORDER') or (AWord = 'HAVING') or
    (AWord = 'JOIN') or (AWord = 'LEFT') or (AWord = 'RIGHT') or
    (AWord = 'INNER') or (AWord = 'OUTER') or (AWord = 'FULL') or
    (AWord = 'CROSS') or (AWord = 'NATURAL') or (AWord = 'ON') or
    (AWord = 'USING') or (AWord = 'UNION') or (AWord = 'PLAN') or
    (AWord = 'FOR') or (AWord = 'INTO') or (AWord = 'SET') or
    (AWord = 'VALUES') or (AWord = 'RETURNING') or (AWord = 'WITH') or
    (AWord = 'AND') or (AWord = 'OR') or (AWord = 'AS') or
    (AWord = 'END') or (AWord = 'BEGIN') or (AWord = 'WHEN') or
    (AWord = 'THEN') or (AWord = 'ELSE') or (AWord = 'DO') or
    (AWord = 'EXECUTE') or (AWord = 'ROWS') or (AWord = 'OFFSET') or
    (AWord = 'FETCH') or (AWord = 'FIRST') or (AWord = 'SKIP') or
    (AWord = 'COMMIT') or (AWord = 'ROLLBACK') or (AWord = 'EXCEPTION') or
    (AWord = 'EXIT') or (AWord = 'SUSPEND') or (AWord = 'DELETE') or
    (AWord = 'INSERT') or (AWord = 'UPDATE') or (AWord = 'MERGE') or
    (AWord = 'CREATE') or (AWord = 'ALTER') or (AWord = 'DROP') or
    (AWord = 'DECLARE');
end;

procedure AddUnique(AList: TStrings; const AValue: string);
begin
  if AList.IndexOf(AValue) < 0 then
    AList.Add(AValue);
end;

{ Percorre o comando e anota relacoes de FROM/JOIN/UPDATE/INTO e seus apelidos.
  ANames guarda os nomes; AAliases guarda "APELIDO=RELACAO". }
procedure CollectRelations(const AText: string; ANames, AAliases: TStrings);
var
  P, SaveP: Integer;
  Tok, U, Rel: string;
  Kind: TTokenKind;
  ReadingList: Boolean;
begin
  P := 1;
  while NextToken(AText, P, Tok, Kind) do
  begin
    if Kind <> tkWord then
      Continue;
    U := UpperCase(Tok);
    if not ((U = 'FROM') or (U = 'JOIN') or (U = 'UPDATE') or (U = 'INTO')) then
      Continue;

    ReadingList := True;
    while ReadingList do
    begin
      SaveP := P;
      if not NextToken(AText, P, Tok, Kind) then
        Break;
      if not (Kind in [tkWord, tkQuoted]) then
      begin
        P := SaveP;
        Break;
      end;
      if (Kind = tkWord) and IsClauseWord(UpperCase(Tok)) then
      begin
        P := SaveP;
        Break;
      end;
      Rel := Tok;
      AddUnique(ANames, Rel);

      { Apelido opcional: FROM tabela [AS] apelido. }
      SaveP := P;
      if NextToken(AText, P, Tok, Kind) then
      begin
        if (Kind = tkWord) and (UpperCase(Tok) = 'AS') then
        begin
          if NextToken(AText, P, Tok, Kind) and (Kind in [tkWord, tkQuoted]) then
            AAliases.Values[UpperCase(Tok)] := Rel
          else
            P := SaveP;
        end
        else if (Kind in [tkWord, tkQuoted]) and
                not ((Kind = tkWord) and IsClauseWord(UpperCase(Tok))) then
          AAliases.Values[UpperCase(Tok)] := Rel
        else
          P := SaveP;
      end;

      { "FROM a, b" continua a lista; qualquer outro token a encerra. }
      SaveP := P;
      if NextToken(AText, P, Tok, Kind) then
      begin
        if (Kind = tkPunct) and (Tok = ',') then
          Continue;
        P := SaveP;
      end;
      ReadingList := False;
    end;
  end;
end;

function ReferencedRelations(const AText: string): TStringArray;
var
  Names, Aliases: TStringList;
  I: Integer;
begin
  Result := nil;
  Names := TStringList.Create;
  Aliases := TStringList.Create;
  try
    CollectRelations(AText, Names, Aliases);
    SetLength(Result, Names.Count);
    for I := 0 to Names.Count - 1 do
      Result[I] := Names[I];
  finally
    Aliases.Free;
    Names.Free;
  end;
end;

function ResolveRelationQualifier(const AText, AQualifier: string): string;
var
  Names, Aliases: TStringList;
  I: Integer;
begin
  Result := '';
  if Trim(AQualifier) = '' then
    Exit;
  Names := TStringList.Create;
  Aliases := TStringList.Create;
  try
    CollectRelations(AText, Names, Aliases);
    I := Aliases.IndexOfName(UpperCase(AQualifier));
    if I >= 0 then
      Exit(Aliases.ValueFromIndex[I]);
    I := Names.IndexOf(AQualifier);
    if I >= 0 then
      Result := Names[I];
  finally
    Aliases.Free;
    Names.Free;
  end;
end;

function CompletionRequestAt(const AText: string): TCompletionRequest;
var
  S: string;
  N, I, J, WordEnd: Integer;
  Prev: string;
  TailSpaces: Boolean;
begin
  Result.Kind := ckKeyword;
  Result.Prefix := '';
  Result.Qualifier := '';
  S := AText;
  N := Length(S);
  while (N >= 1) and (S[N] <= ' ') do
    Dec(N);
  if N = 0 then
    Exit;

  TailSpaces := N < Length(S);
  if TailSpaces then
  begin
    { Terminou em espaco: ainda nao ha palavra digitada. }
    I := N;
    Result.Prefix := '';
  end
  else
  begin
    I := N;
    while (I >= 1) and IsIdentChar(S[I]) do
      Dec(I);
    Result.Prefix := Copy(S, I + 1, N - I);
  end;

  { "alias." ou "alias.cam" -> campos daquela relacao. }
  if (not TailSpaces) and (I >= 1) and (S[I] = '.') then
  begin
    Result.Kind := ckField;
    J := I - 1;
    while (J >= 1) and (S[J] <= ' ') do
      Dec(J);
    if (J >= 1) and (S[J] = '"') then
    begin
      WordEnd := J - 1;
      while (J >= 1) and (S[J] <> '"') do
        Dec(J);
      if J >= 1 then
        Result.Qualifier := StringReplace(Copy(S, J + 1, WordEnd - J), '""', '"',
          [rfReplaceAll])
      else
        Result.Qualifier := Copy(S, 1, WordEnd);
    end
    else
    begin
      WordEnd := J;
      while (J >= 1) and IsIdentChar(S[J]) do
        Dec(J);
      Result.Qualifier := Copy(S, J + 1, WordEnd - J);
    end;
    Exit;
  end;

  { Palavra anterior ao que esta sendo digitado. }
  J := I;
  while (J >= 1) and (S[J] <= ' ') do
    Dec(J);
  WordEnd := J;
  while (J >= 1) and IsIdentChar(S[J]) do
    Dec(J);
  Prev := UpperCase(Copy(S, J + 1, WordEnd - J));

  if (Prev = 'FROM') or (Prev = 'JOIN') or (Prev = 'INTO') or (Prev = 'UPDATE') or
     (Prev = 'TABLE') or (Prev = 'VIEW') then
    Result.Kind := ckRelation
  else if Length(ReferencedRelations(S)) > 0 then
    Result.Kind := ckField
  else
    Result.Kind := ckKeyword;
end;

function QuoteIdentifier(const AName: string): string;
var
  I: Integer;
  Needs: Boolean;
begin
  Needs := AName = '';
  if not Needs then
  begin
    if not (AName[1] in ['A'..'Z', 'a'..'z', '_']) then
      Needs := True;
    for I := 1 to Length(AName) do
      if not (AName[I] in ['A'..'Z', 'a'..'z', '0'..'9', '_', '$', '#']) then
      begin
        Needs := True;
        Break;
      end;
    if (not Needs) and (AName <> UpperCase(AName)) then
      Needs := True;
    if (not Needs) and IsSqlKeyword(AName) then
      Needs := True;
  end;
  if Needs then
    Result := '"' + StringReplace(AName, '"', '""', [rfReplaceAll]) + '"'
  else
    Result := AName;
end;

const
  SQL_KEYWORDS_TEXT =
    'ADD ALL ALTER AND ANY AS ASC AT AVG BEGIN BETWEEN BLOB BOTH BY CASE CAST ' +
    'CHAR CHARACTER CHECK COLLATE COLUMN COMMENT COMMIT COMMITTED COMPUTED ' +
    'CONDITIONAL CONNECT CONSTRAINT CONTAINING COUNT CREATE CSTRING CURRENT ' +
    'CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_TRANSACTION ' +
    'CURRENT_USER CURSOR DATABASE DATE DAY DEC DECIMAL DECLARE DEFAULT DELETE ' +
    'DELETING DESC DESCRIBE DESCRIPTOR DISCONNECT DISTINCT DO DOMAIN DOUBLE ' +
    'DROP ELSE END ENTRY_POINT ESCAPE EXCEPTION EXECUTE EXISTS EXIT EXTERNAL ' +
    'EXTRACT FETCH FILE FILTER FIRST FLOAT FOR FOREIGN FROM FULL FUNCTION ' +
    'GDSCODE GENERATOR GEN_ID GLOBAL GRANT GROUP HAVING HOUR IF IN INACTIVE ' +
    'INDEX INNER INPUT_TYPE INSERT INSERTING INT INTEGER INTO IS JOIN KEY ' +
    'LATERAL LEADING LEFT LENGTH LIKE LONG LOWER MANUAL MAX MAXIMUM_SEGMENT ' +
    'MERGE MIN MINUTE MODULE_NAME MONTH NAMES NATIONAL NATURAL NCHAR NEXT NO ' +
    'NOT NULL NULLIF NUMERIC OCTET_LENGTH OF OFFSET ON ONLY OPEN OPTIMIZE ' +
    'OPTION OR ORDER OUTER OUTPUT_TYPE OVER OVERFLOW PAGE PAGE_SIZE PAGES ' +
    'PARAMETER PARTITION PERCENT PLAN POSITION POST_EVENT PRECEDING ' +
    'PRECISION PRIMARY PRIVILEGES PROCEDURE PROTECTED RANGE READ REAL ' +
    'RECORD_VERSION RECREATE RECURSIVE REFERENCES RELEASE RESTART RETURNING ' +
    'RETURNING_VALUES RETURNS REVOKE RIGHT ROLE ROLLBACK ROW ROW_COUNT ROWS ' +
    'SAVEPOINT SCHEMA SECOND SELECT SENSITIVE SEQUENCE SET SHADOW SHARED ' +
    'SINGULAR SIZE SKIP SMALLINT SNAPSHOT SOME SQLCODE SQLSTATE START ' +
    'STATISTICS SUB_TYPE SUM SUSPEND TABLE TEMPORARY THEN TIES TIME ' +
    'TIMESTAMP TO TRAILING TRANSACTION TRIGGER TRIM UNBOUNDED UNCOMMITTED ' +
    'UNION UNIQUE UPDATE UPDATING UPPER USER USING VALUE VALUES VARCHAR ' +
    'VARIABLE VARYING VIEW WAIT WHEN WHERE WHILE WITH WORK WRITE YEAR';

  SQL_FUNCTIONS_TEXT =
    'ABS ACOS ASCII_CHAR ASCII_VAL ASIN ATAN ATAN2 AVG BIN_AND BIN_NOT BIN_OR ' +
    'BIN_SHL BIN_SHR BIN_XOR BIT_LENGTH CEIL CEILING CHAR_LENGTH ' +
    'CHAR_TO_UUID COALESCE COS COSH COUNT DATEADD DATEDIFF DECODE EXP FLOOR ' +
    'GEN_ID HASH IIF LEFT LENGTH LN LOG LOWER LPAD MAX MAXVALUE MIN MINVALUE ' +
    'MOD NULLIF OCTET_LENGTH OVERLAY PI POSITION POWER RAND REPLACE REVERSE ' +
    'RIGHT ROUND RPAD SIGN SIN SINH SQRT SUBSTRING SUM TAN TANH TRIM TRUNC ' +
    'UPPER UUID_TO_CHAR';

function SplitWords(const AText: string): TStringArray;
var
  List: TStringList;
  I: Integer;
begin
  Result := nil;
  List := TStringList.Create;
  try
    List.Delimiter := ' ';
    List.StrictDelimiter := False;
    List.DelimitedText := AText;
    SetLength(Result, List.Count);
    for I := 0 to List.Count - 1 do
      Result[I] := List[I];
  finally
    List.Free;
  end;
end;

function SqlKeywords: TStringArray;
begin
  Result := SplitWords(SQL_KEYWORDS_TEXT);
end;

function SqlFunctions: TStringArray;
begin
  Result := SplitWords(SQL_FUNCTIONS_TEXT);
end;

function IsSqlKeyword(const AWord: string): Boolean;
var
  Words: TStringArray;
  I: Integer;
  U: string;
begin
  Result := False;
  U := UpperCase(AWord);
  Words := SqlKeywords;
  for I := 0 to High(Words) do
    if Words[I] = U then
      Exit(True);
end;

end.
