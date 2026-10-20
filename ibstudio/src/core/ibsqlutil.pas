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

end.
