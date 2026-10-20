unit ibddl;
{ Modelo de tabela e geracao de DDL (CREATE/ALTER/DROP) do Firebird.

  Nao depende de LCL nem de banco: os modelos vem do catalogo e os scripts
  sao montados como texto para a UI executar. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil;

type
  { Campo de uma tabela. }
  TFieldDefModel = record
    Name: string;
    TypeName: string;        { VARCHAR, INTEGER, NUMERIC... }
    SubType: Integer;        { subtipo do Firebird (NUMERIC=1, DECIMAL=2...) }
    Length: Integer;         { tamanho do texto ou precisao do numerico }
    Scale: Integer;
    NotNull: Boolean;
    PrimaryKeyPos: Integer;  { posicao na chave primaria (0 = fora) }
    DefaultValue: string;    { literal do valor padrao }
    Computed: Boolean;
    ComputedSource: string;
    Description: string;
  end;
  TFieldDefArray = array of TFieldDefModel;

  { Indice. }
  TIndexModel = record
    Name: string;
    Fields: TStringArray;
    Unique: Boolean;
    Descending: Boolean;
  end;
  TIndexArray = array of TIndexModel;

  { Chave estrangeira. }
  TFkModel = record
    Name: string;
    Fields: TStringArray;
    RefTable: string;
    RefFields: TStringArray;
    OnUpdate: string;
    OnDelete: string;
  end;
  TFkArray = array of TFkModel;

  { Tabela completa. }
  TTableModel = record
    Name: string;
    Description: string;
    Fields: TFieldDefArray;
    Indexes: TIndexArray;
    ForeignKeys: TFkArray;
  end;

{ Tipo completo do campo (com tamanho ou precisao). }
function FieldTypeSQL(const AField: TFieldDefModel): string;

{ Campos da chave primaria, na ordem da posicao. }
function PrimaryKeyFields(const AModel: TTableModel): TStringArray;

{ Script de criacao da tabela (com chave primaria, indices e FKs). }
function CreateTableSQL(const AModel: TTableModel): TStringArray;

{ Comandos de alteracao entre dois modelos. }
function AlterTableSQL(const AOld, ANew: TTableModel): TStringArray;

{ Comando de exclusao da tabela. }
function DropTableSQL(const ARelation: string): string;

{ Nome da regra de ON UPDATE / ON DELETE de uma chave estrangeira. }
function RefRuleName(ARule: Integer): string;

implementation

function FieldTypeSQL(const AField: TFieldDefModel): string;
var
  Name: string;
begin
  { O SQL do app usa palavras-chave minusculas; os tipos seguem o mesmo
    padrao. }
  Name := LowerCase(Trim(AField.TypeName));
  if Name = '' then
    Exit('integer');

  if (Name = 'varchar') or (Name = 'char') then
    Result := Name + '(' + IntToStr(AField.Length) + ')'
  else if (Name = 'numeric') or (Name = 'decimal') then
    Result := Name + '(' + IntToStr(AField.Length) + ',' +
      IntToStr(AField.Scale) + ')'
  else if Name = 'blob' then
  begin
    if AField.SubType = 1 then
      Result := 'blob sub_type text'
    else if AField.SubType = 2 then
      Result := 'blob sub_type binary'
    else
      Result := 'blob';
  end
  else
    Result := Name;
end;

function PrimaryKeyFields(const AModel: TTableModel): TStringArray;
var
  I, J, K: Integer;
  Pos: array of Integer;
begin
  Result := nil;
  SetLength(Pos, Length(AModel.Fields));
  for I := 0 to High(AModel.Fields) do
    Pos[I] := AModel.Fields[I].PrimaryKeyPos;

  SetLength(Result, 0);
  K := 1;
  while True do
  begin
    J := -1;
    for I := 0 to High(AModel.Fields) do
      if Pos[I] = K then
      begin
        J := I;
        Break;
      end;
    if J < 0 then
      Break;
    SetLength(Result, Length(Result) + 1);
    Result[High(Result)] := AModel.Fields[J].Name;
    Inc(K);
  end;
end;

function FieldDefinitionSQL(const AField: TFieldDefModel; AWithConstraints: Boolean): string;
var
  S: string;
begin
  S := QuoteIdentifier(AField.Name) + ' ' + FieldTypeSQL(AField);
  if AWithConstraints then
  begin
    if AField.Computed then
      S := S + ' computed by ' + AField.ComputedSource
    else
    begin
      if AField.NotNull then
        S := S + ' not null';
      if Trim(AField.DefaultValue) <> '' then
        S := S + ' default ' + Trim(AField.DefaultValue);
    end;
  end;
  Result := S;
end;

function IndexSQL(const AModel: TTableModel; const AIndex: TIndexModel): string;
var
  I: Integer;
  S: string;
begin
  S := 'create ';
  if AIndex.Unique then
    S := S + 'unique ';
  S := S + 'index ' + QuoteIdentifier(AIndex.Name) + ' on ' +
    QuoteIdentifier(AModel.Name) + ' (';
  for I := 0 to High(AIndex.Fields) do
  begin
    if I > 0 then
      S := S + ', ';
    S := S + QuoteIdentifier(AIndex.Fields[I]);
    if AIndex.Descending then
      S := S + ' desc';
  end;
  Result := S + ')';
end;

function ForeignKeySQL(const AModel: TTableModel; const AFk: TFkModel): string;
var
  I: Integer;
  S: string;
begin
  S := 'alter table ' + QuoteIdentifier(AModel.Name) + ' add constraint ' +
    QuoteIdentifier(AFk.Name) + ' foreign key (';
  for I := 0 to High(AFk.Fields) do
  begin
    if I > 0 then
      S := S + ', ';
    S := S + QuoteIdentifier(AFk.Fields[I]);
  end;
  S := S + ') references ' + QuoteIdentifier(AFk.RefTable) + ' (';
  for I := 0 to High(AFk.RefFields) do
  begin
    if I > 0 then
      S := S + ', ';
    S := S + QuoteIdentifier(AFk.RefFields[I]);
  end;
  S := S + ')';
  if Trim(AFk.OnUpdate) <> '' then
    S := S + ' on update ' + Trim(AFk.OnUpdate);
  if Trim(AFk.OnDelete) <> '' then
    S := S + ' on delete ' + Trim(AFk.OnDelete);
  Result := S;
end;

{ Literal de texto para o SQL. }
function QuotedLiteral(const AValue: string): string;
begin
  Result := '''' + StringReplace(AValue, '''', '''''', [rfReplaceAll]) + '''';
end;

function JoinLines(const ALines: TStrings; const ASep: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to ALines.Count - 1 do
  begin
    if I > 0 then
      Result := Result + ASep;
    Result := Result + ALines[I];
  end;
end;

function ToArray(const ALines: TStrings): TStringArray;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALines.Count);
  for I := 0 to ALines.Count - 1 do
    Result[I] := ALines[I];
end;

function CreateTableSQL(const AModel: TTableModel): TStringArray;
var
  I: Integer;
  Body: TStringList;
  S: string;
  PK: TStringArray;
  Statements: TStringList;
begin
  Body := TStringList.Create;
  Statements := TStringList.Create;
  try
    for I := 0 to High(AModel.Fields) do
      Body.Add('  ' + FieldDefinitionSQL(AModel.Fields[I], True));

    PK := PrimaryKeyFields(AModel);
    if Length(PK) > 0 then
    begin
      S := '  constraint ' + QuoteIdentifier('PK_' + AModel.Name) +
        ' primary key (';
      for I := 0 to High(PK) do
      begin
        if I > 0 then
          S := S + ', ';
        S := S + QuoteIdentifier(PK[I]);
      end;
      Body.Add(S + ')');
    end;

    Statements.Add('create table ' + QuoteIdentifier(AModel.Name) + ' (' +
      LineEnding + JoinLines(Body, ',' + LineEnding) + LineEnding + ');');

    for I := 0 to High(AModel.Indexes) do
      Statements.Add(IndexSQL(AModel, AModel.Indexes[I]) + ';');

    for I := 0 to High(AModel.ForeignKeys) do
      Statements.Add(ForeignKeySQL(AModel, AModel.ForeignKeys[I]) + ';');

    if Trim(AModel.Description) <> '' then
      Statements.Add('comment on table ' + QuoteIdentifier(AModel.Name) +
        ' is ' + QuotedLiteral(Trim(AModel.Description)) + ';');

    for I := 0 to High(AModel.Fields) do
      if Trim(AModel.Fields[I].Description) <> '' then
        Statements.Add('comment on column ' + QuoteIdentifier(AModel.Name) +
          '.' + QuoteIdentifier(AModel.Fields[I].Name) + ' is ' +
          QuotedLiteral(Trim(AModel.Fields[I].Description)) + ';');

    Result := ToArray(Statements);
  finally
    Statements.Free;
    Body.Free;
  end;
end;

function FindField(const AFields: TFieldDefArray; const AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to High(AFields) do
    if SameText(AFields[I].Name, AName) then
      Exit(I);
  Result := -1;
end;

function FindIndex(const AIndexes: TIndexArray; const AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to High(AIndexes) do
    if SameText(AIndexes[I].Name, AName) then
      Exit(I);
  Result := -1;
end;

function FindFk(const AFks: TFkArray; const AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to High(AFks) do
    if SameText(AFks[I].Name, AName) then
      Exit(I);
  Result := -1;
end;

function SameStringArray(const A, B: TStringArray): Boolean;
var
  I: Integer;
begin
  if Length(A) <> Length(B) then
    Exit(False);
  for I := 0 to High(A) do
    if not SameText(A[I], B[I]) then
      Exit(False);
  Result := True;
end;

function AlterTableSQL(const AOld, ANew: TTableModel): TStringArray;
var
  I, J: Integer;
  Statements: TStringList;
  OldPK, NewPK: TStringArray;
  S: string;
  Same: Boolean;
begin
  Statements := TStringList.Create;
  try
    { Campos novos. }
    for I := 0 to High(ANew.Fields) do
      if FindField(AOld.Fields, ANew.Fields[I].Name) < 0 then
        Statements.Add('alter table ' + QuoteIdentifier(ANew.Name) + ' add ' +
          FieldDefinitionSQL(ANew.Fields[I], True) + ';');

    { Campos removidos. }
    for I := 0 to High(AOld.Fields) do
      if FindField(ANew.Fields, AOld.Fields[I].Name) < 0 then
        Statements.Add('alter table ' + QuoteIdentifier(ANew.Name) + ' drop ' +
          QuoteIdentifier(AOld.Fields[I].Name) + ';');

    { Campo que mudou de tipo. }
    for I := 0 to High(ANew.Fields) do
    begin
      J := FindField(AOld.Fields, ANew.Fields[I].Name);
      if J >= 0 then
        if FieldTypeSQL(AOld.Fields[J]) <> FieldTypeSQL(ANew.Fields[I]) then
          Statements.Add('alter table ' + QuoteIdentifier(ANew.Name) +
            ' alter ' + QuoteIdentifier(ANew.Fields[I].Name) + ' ' +
            FieldTypeSQL(ANew.Fields[I]) + ';');
    end;

    { Chave primaria. }
    OldPK := PrimaryKeyFields(AOld);
    NewPK := PrimaryKeyFields(ANew);
    if not SameStringArray(OldPK, NewPK) then
    begin
      if Length(OldPK) > 0 then
        Statements.Add('alter table ' + QuoteIdentifier(ANew.Name) +
          ' drop constraint ' + QuoteIdentifier('PK_' + AOld.Name) + ';');
      if Length(NewPK) > 0 then
      begin
        S := 'alter table ' + QuoteIdentifier(ANew.Name) + ' add constraint ' +
          QuoteIdentifier('PK_' + ANew.Name) + ' primary key (';
        for I := 0 to High(NewPK) do
        begin
          if I > 0 then
            S := S + ', ';
          S := S + QuoteIdentifier(NewPK[I]);
        end;
        Statements.Add(S + ');');
      end;
    end;

    { Indices. }
    for I := 0 to High(ANew.Indexes) do
      if FindIndex(AOld.Indexes, ANew.Indexes[I].Name) < 0 then
        Statements.Add(IndexSQL(ANew, ANew.Indexes[I]) + ';');
    for I := 0 to High(AOld.Indexes) do
      if FindIndex(ANew.Indexes, AOld.Indexes[I].Name) < 0 then
        Statements.Add('drop index ' + QuoteIdentifier(AOld.Indexes[I].Name) + ';');

    { Chaves estrangeiras. }
    for I := 0 to High(ANew.ForeignKeys) do
      if FindFk(AOld.ForeignKeys, ANew.ForeignKeys[I].Name) < 0 then
        Statements.Add(ForeignKeySQL(ANew, ANew.ForeignKeys[I]) + ';');
    for I := 0 to High(AOld.ForeignKeys) do
      if FindFk(ANew.ForeignKeys, AOld.ForeignKeys[I].Name) < 0 then
        Statements.Add('alter table ' + QuoteIdentifier(ANew.Name) +
          ' drop constraint ' + QuoteIdentifier(AOld.ForeignKeys[I].Name) + ';');

    Result := ToArray(Statements);
  finally
    Statements.Free;
  end;
end;

function DropTableSQL(const ARelation: string): string;
begin
  Result := 'drop table ' + QuoteIdentifier(ARelation) + ';';
end;

function RefRuleName(ARule: Integer): string;
begin
  case ARule of
    0: Result := 'RESTRICT';
    1: Result := 'CASCADE';
    2: Result := 'SET NULL';
    3: Result := 'SET DEFAULT';
    4: Result := 'NO ACTION';
  else
    Result := 'RESTRICT';
  end;
end;

end.
