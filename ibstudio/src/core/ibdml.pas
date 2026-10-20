unit ibdml;
{ Geracao de comandos DML (insert, update, delete) e reconhecimento de
  consultas simples sobre uma tabela — base da edicao de dados.

  Nao depende de LCL nem de banco: os comandos sao montados como texto e
  devolvidos para a UI executar. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil, ibmetadata;

type
  { Valor de um campo dentro de um comando DML. }
  TFieldValue = record
    Name: string;
    Value: string;
    IsNull: Boolean;
    IsNumeric: Boolean;
  end;
  TFieldValueArray = array of TFieldValue;

{ Verdadeiro quando o comando e um "select ... from <uma relacao>" simples:
  sem join, sem agregacao, sem union e sem funcao/subconsulta. ARelation
  recebe o nome da relacao citada. }
function IsSimpleRelationSelect(const ASQL: string; out ARelation: string): Boolean;

{ Literal pronto para o SQL: NULL, numero sem aspas ou texto entre aspas. }
function QuoteLiteral(const AValue: string; AIsNull, AIsNumeric: Boolean): string;

{ INSERT com as colunas e os valores informados. }
function BuildInsert(const ARelation: string; const AFields: TFieldValueArray): string;

{ UPDATE das colunas informadas, restrito as chaves informadas. }
function BuildUpdate(const ARelation: string; const AFields,
  AKeys: TFieldValueArray): string;

{ DELETE restrito as chaves informadas. }
function BuildDelete(const ARelation: string; const AKeys: TFieldValueArray): string;

{ Verdadeiro quando o tipo do campo e numerico (literal sem aspas). }
function IsNumericFieldType(AFieldType: Integer): Boolean;

implementation

{ Procura uma palavra inteira no texto (sem(prefixo/sufixo) de identificador). }
function ContainsWord(const AText, AWord: string): Boolean;
var
  I, L, N: Integer;
  U: string;

  function IsWordChar(C: Char): Boolean;
  begin
    Result := (C >= 'A') and (C <= 'Z') or (C >= '0') and (C <= '9') or
      (C = '_') or (C = '$') or (C = '#');
  end;

begin
  U := UpperCase(AText);
  L := Length(AWord);
  N := Length(U);
  I := 1;
  while I <= N do
  begin
    if (Copy(U, I, L) = AWord) and
       ((I = 1) or not IsWordChar(U[I - 1])) and
       ((I + L > N) or not IsWordChar(U[I + L])) then
      Exit(True);
    Inc(I);
  end;
  Result := False;
end;

function IsSimpleRelationSelect(const ASQL: string; out ARelation: string): Boolean;
var
  S: string;
  Rels: TStringArray;
begin
  ARelation := '';
  S := StripLeadingTrivia(ASQL);
  if DetectStatementKind(S) <> skSelect then
    Exit(False);

  { Funcoes, agregacoes e subconsultas impedem editar linha a linha. }
  if Pos('(', S) > 0 then
    Exit(False);

  { Essas clausulas justicecam mais de uma relacao ou mudam o conjunto. }
  if ContainsWord(S, 'JOIN') or ContainsWord(S, 'UNION') or
     ContainsWord(S, 'GROUP') or ContainsWord(S, 'HAVING') then
    Exit(False);

  Rels := ReferencedRelations(S);
  if Length(Rels) <> 1 then
    Exit(False);

  ARelation := Rels[0];
  Result := True;
end;

function IsNumericFieldType(AFieldType: Integer): Boolean;
begin
  Result := AFieldType in [fbtSmallInt, fbtInteger, fbtBigInt, fbtFloat,
    fbtDFloat, fbtDouble, fbtBoolean];
end;

function QuoteLiteral(const AValue: string; AIsNull, AIsNumeric: Boolean): string;
begin
  if AIsNull then
    Exit('NULL');
  if AIsNumeric then
    Exit(Trim(AValue));
  Result := '''' + StringReplace(AValue, '''', '''''', [rfReplaceAll]) + '''';
end;

function BuildInsert(const ARelation: string; const AFields: TFieldValueArray): string;
var
  I: Integer;
  Cols, Vals: string;
begin
  Cols := '';
  Vals := '';
  for I := 0 to High(AFields) do
  begin
    if I > 0 then
    begin
      Cols := Cols + ', ';
      Vals := Vals + ', ';
    end;
    Cols := Cols + QuoteIdentifier(AFields[I].Name);
    Vals := Vals + QuoteLiteral(AFields[I].Value, AFields[I].IsNull,
      AFields[I].IsNumeric);
  end;

  Result := 'insert into ' + QuoteIdentifier(ARelation);
  if Cols = '' then
    Result := Result + ' default values'
  else
    Result := Result + ' (' + Cols + ') values (' + Vals + ')';
end;

function BuildWhere(const AKeys: TFieldValueArray): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to High(AKeys) do
  begin
    if I > 0 then
      Result := Result + ' and ';
    Result := Result + QuoteIdentifier(AKeys[I].Name) + ' = ' +
      QuoteLiteral(AKeys[I].Value, AKeys[I].IsNull, AKeys[I].IsNumeric);
  end;
end;

function BuildUpdate(const ARelation: string; const AFields,
  AKeys: TFieldValueArray): string;
var
  I: Integer;
  Sets: string;
begin
  Sets := '';
  for I := 0 to High(AFields) do
  begin
    if I > 0 then
      Sets := Sets + ', ';
    Sets := Sets + QuoteIdentifier(AFields[I].Name) + ' = ' +
      QuoteLiteral(AFields[I].Value, AFields[I].IsNull, AFields[I].IsNumeric);
  end;

  Result := 'update ' + QuoteIdentifier(ARelation) + ' set ' + Sets;
  if AKeys <> nil then
    Result := Result + ' where ' + BuildWhere(AKeys);
end;

function BuildDelete(const ARelation: string; const AKeys: TFieldValueArray): string;
begin
  Result := 'delete from ' + QuoteIdentifier(ARelation);
  if AKeys <> nil then
    Result := Result + ' where ' + BuildWhere(AKeys);
end;

end.
