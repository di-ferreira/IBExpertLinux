unit ibcompare;
{ Comparacao de dois esquemas e geracao do script de sincronizacao.
  Trabalha sobre o modelo do esquema (sem banco e sem LCL). }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil, ibddl, ibschema;

type
  TDiffKind = (dkOnlyInA, dkOnlyInB, dkDifferent);

  { Uma diferenca entre os dois esquemas. }
  TDiffItem = record
    Kind: TDiffKind;
    ObjectType: string;   { table, column, index, foreign key, view... }
    Name: string;
    Detail: string;       { descricao legivel }
    Script: string;       { comando que aplica a mudanca no outro lado }
  end;
  TDiffList = array of TDiffItem;

{ Compara os dois esquemas. }
function CompareSchemas(const A, B: TSchemaModel): TDiffList;

{ Script que transforma um esquema no outro. AToB = True aplica A em B. }
function BuildSyncScript(const ADiff: TDiffList; AToB: Boolean): TStringArray;

implementation

function ToArray(const ALines: TStrings): TStringArray;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALines.Count);
  for I := 0 to ALines.Count - 1 do
    Result[I] := ALines[I];
end;

function JoinFields(const AFields: TStringArray): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to High(AFields) do
  begin
    if I > 0 then
      Result := Result + ', ';
    Result := Result + QuoteIdentifier(AFields[I]);
  end;
end;

procedure AddItem(var AItems: TDiffList; var ACount: Integer;
  const AKind: TDiffKind; const AObjectType, AName, ADetail,
  AScript: string);
begin
  Inc(ACount);
  SetLength(AItems, ACount);
  AItems[ACount - 1].Kind := AKind;
  AItems[ACount - 1].ObjectType := AObjectType;
  AItems[ACount - 1].Name := AName;
  AItems[ACount - 1].Detail := ADetail;
  AItems[ACount - 1].Script := AScript;
end;

function CompareSchemas(const A, B: TSchemaModel): TDiffList;
var
  I, J, K, K2, IA, IB, Count: Integer;
  TableA, TableB: TTableModel;
  Stmts: TStringArray;
  S, Name: string;
  Found: Boolean;
  Names: TStringArray;
begin
  SetLength(Result, 0);
  Count := 0;

  { Tabelas e o conteudo delas. }
  Names := SortedTableNames(A);
  for K := 0 to High(Names) do
  begin
    IA := FindTable(A, Names[K]);
    if IA < 0 then
      Continue;
    IB := FindTable(B, Names[K]);
    if IB < 0 then
    begin
      TableA := A.Tables[IA];
      Stmts := CreateTableSQL(TableA);
      S := '';
      for J := 0 to High(Stmts) do
        S := S + Stmts[J] + ' ';
      AddItem(Result, Count, dkOnlyInA, 'table', Names[K],
        'tabela so no primeiro esquema', S);
      Continue;
    end;

    TableA := A.Tables[IA];
    TableB := B.Tables[IB];

    { Colunas. }
    for I := 0 to High(TableA.Fields) do
    begin
      J := -1;
      for K2 := 0 to High(TableB.Fields) do
        if SameText(TableB.Fields[K2].Name, TableA.Fields[I].Name) then
        begin
          J := K2;
          Break;
        end;
      if J < 0 then
      begin
        S := 'alter table ' + QuoteIdentifier(TableA.Name) + ' add ' +
          QuoteIdentifier(TableA.Fields[I].Name) + ' ' +
          FieldTypeSQL(TableA.Fields[I]) + ';';
        AddItem(Result, Count, dkOnlyInA, 'column',
          TableA.Name + '.' + TableA.Fields[I].Name,
          'coluna so no primeiro esquema', S);
      end
      else if FieldTypeSQL(TableA.Fields[I]) <> FieldTypeSQL(TableB.Fields[J]) then
      begin
        S := 'alter table ' + QuoteIdentifier(TableA.Name) + ' alter ' +
          QuoteIdentifier(TableA.Fields[I].Name) + ' ' +
          FieldTypeSQL(TableA.Fields[I]) + ';';
        AddItem(Result, Count, dkDifferent, 'column',
          TableA.Name + '.' + TableA.Fields[I].Name,
          'tipo ' + FieldTypeSQL(TableB.Fields[J]) + ' no segundo, ' +
          FieldTypeSQL(TableA.Fields[I]) + ' no primeiro', S);
      end;
    end;

    for I := 0 to High(TableB.Fields) do
    begin
      Found := False;
      for K2 := 0 to High(TableA.Fields) do
        if SameText(TableA.Fields[K2].Name, TableB.Fields[I].Name) then
          Found := True;
      if not Found then
      begin
        S := 'alter table ' + QuoteIdentifier(TableB.Name) + ' drop ' +
          QuoteIdentifier(TableB.Fields[I].Name) + ';';
        AddItem(Result, Count, dkOnlyInB, 'column',
          TableB.Name + '.' + TableB.Fields[I].Name,
          'coluna so no segundo esquema', S);
      end;
    end;

    { Indices. }
    for I := 0 to High(TableA.Indexes) do
    begin
      Found := False;
      for K2 := 0 to High(TableB.Indexes) do
        if SameText(TableB.Indexes[K2].Name, TableA.Indexes[I].Name) then
          Found := True;
      if not Found then
      begin
        S := 'create index ' + QuoteIdentifier(TableA.Indexes[I].Name) +
          ' on ' + QuoteIdentifier(TableA.Name) + ' (' +
          JoinFields(TableA.Indexes[I].Fields) + ');';
        AddItem(Result, Count, dkOnlyInA, 'index',
          TableA.Name + '.' + TableA.Indexes[I].Name,
          'indice so no primeiro esquema', S);
      end;
    end;

    { Chaves estrangeiras. }
    for I := 0 to High(TableA.ForeignKeys) do
    begin
      Found := False;
      for K2 := 0 to High(TableB.ForeignKeys) do
        if SameText(TableB.ForeignKeys[K2].Name, TableA.ForeignKeys[I].Name) then
          Found := True;
      if not Found then
      begin
        S := 'alter table ' + QuoteIdentifier(TableA.Name) +
          ' add constraint ' + QuoteIdentifier(TableA.ForeignKeys[I].Name) +
          ' foreign key (' + JoinFields(TableA.ForeignKeys[I].Fields) +
          ') references ' + QuoteIdentifier(TableA.ForeignKeys[I].RefTable) +
          ' (' + JoinFields(TableA.ForeignKeys[I].RefFields) + ');';
        AddItem(Result, Count, dkOnlyInA, 'foreign key',
          TableA.Name + '.' + TableA.ForeignKeys[I].Name,
          'chave estrangeira so no primeiro esquema', S);
      end;
    end;
  end;

  { Tabelas que so existem no segundo esquema. }
  Names := SortedTableNames(B);
  for K := 0 to High(Names) do
    if FindTable(A, Names[K]) < 0 then
    begin
      IB := FindTable(B, Names[K]);
      TableB := B.Tables[IB];
      Stmts := CreateTableSQL(TableB);
      S := '';
      for J := 0 to High(Stmts) do
        S := S + Stmts[J] + ' ';
      AddItem(Result, Count, dkOnlyInB, 'table', Names[K],
        'tabela so no segundo esquema', S);
    end;

  { Views. }
  for I := 0 to High(A.Views) do
  begin
    Found := False;
    for K := 0 to High(B.Views) do
      if SameText(B.Views[K].Name, A.Views[I].Name) then
        Found := True;
    if not Found then
      AddItem(Result, Count, dkOnlyInA, 'view', A.Views[I].Name,
        'view so no primeiro esquema', '');
  end;
  for I := 0 to High(B.Views) do
  begin
    Found := False;
    for K := 0 to High(A.Views) do
      if SameText(A.Views[K].Name, B.Views[I].Name) then
        Found := True;
    if not Found then
      AddItem(Result, Count, dkOnlyInB, 'view', B.Views[I].Name,
        'view so no segundo esquema', '');
  end;

  { Procedures. }
  for I := 0 to High(A.Procedures) do
  begin
    Found := False;
    for K := 0 to High(B.Procedures) do
      if SameText(B.Procedures[K].Name, A.Procedures[I].Name) then
        Found := True;
    if not Found then
      AddItem(Result, Count, dkOnlyInA, 'procedure', A.Procedures[I].Name,
        'procedure so no primeiro esquema', '');
  end;
  for I := 0 to High(B.Procedures) do
  begin
    Found := False;
    for K := 0 to High(A.Procedures) do
      if SameText(A.Procedures[K].Name, B.Procedures[I].Name) then
        Found := True;
    if not Found then
      AddItem(Result, Count, dkOnlyInB, 'procedure', B.Procedures[I].Name,
        'procedure so no segundo esquema', '');
  end;

  { Triggers. }
  for I := 0 to High(A.Triggers) do
  begin
    Found := False;
    for K := 0 to High(B.Triggers) do
      if SameText(B.Triggers[K].Name, A.Triggers[I].Name) then
        Found := True;
    if not Found then
      AddItem(Result, Count, dkOnlyInA, 'trigger', A.Triggers[I].Name,
        'trigger so no primeiro esquema', '');
  end;

  SetLength(Result, Count);
end;

function BuildSyncScript(const ADiff: TDiffList; AToB: Boolean): TStringArray;
var
  I: Integer;
  Lines: TStringList;
begin
  Lines := TStringList.Create;
  try
    for I := 0 to High(ADiff) do
    begin
      { A -> B: so as diferencas "so no primeiro" precisam ser aplicadas. }
      if AToB and (ADiff[I].Kind = dkOnlyInB) then
        Continue;
      { B -> A: vale o contrario. }
      if (not AToB) and (ADiff[I].Kind = dkOnlyInA) then
        Continue;
      if Trim(ADiff[I].Script) <> '' then
        Lines.Add(ADiff[I].Script);
    end;
    Result := ToArray(Lines);
  finally
    Lines.Free;
  end;
end;

end.
