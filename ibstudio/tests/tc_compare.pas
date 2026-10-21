unit tc_compare;
{ Testes da comparacao de esquemas. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibddl, ibschema, ibcompare;

type
  TCompareTest = class(TTestCase)
  private
    function ModelA: TSchemaModel;
    function ModelB: TSchemaModel;
    function FindDiff(const ADiff: TDiffList; const AType, AName: string): Integer;
  published
    procedure TabelaSoNoPrimeiro;
    procedure ColunaSoNoPrimeiro;
    procedure ColunaComTipoDiferente;
    procedure ScriptDeSincronizacao;
  end;

implementation

function TCompareTest.ModelA: TSchemaModel;
var
  T: TTableModel;
  F: TFieldDefModel;
begin
  Result := NewSchemaModel;
  T := Default(TTableModel);
  T.Name := 'TABELA';
  F := Default(TFieldDefModel);
  F.Name := 'ID';
  F.TypeName := 'INTEGER';
  F.NotNull := True;
  F.PrimaryKeyPos := 1;
  SetLength(T.Fields, 1);
  T.Fields[0] := F;
  F := Default(TFieldDefModel);
  F.Name := 'NOME';
  F.TypeName := 'VARCHAR';
  F.Length := 60;
  SetLength(T.Fields, 2);
  T.Fields[1] := F;
  SetLength(Result.Tables, 1);
  Result.Tables[0] := T;
end;

function TCompareTest.ModelB: TSchemaModel;
var
  T, T2: TTableModel;
  F: TFieldDefModel;
begin
  Result := NewSchemaModel;
  T := Default(TTableModel);
  T.Name := 'TABELA';
  F := Default(TFieldDefModel);
  F.Name := 'ID';
  F.TypeName := 'INTEGER';
  SetLength(T.Fields, 1);
  T.Fields[0] := F;
  SetLength(Result.Tables, 1);
  Result.Tables[0] := T;

  T2 := Default(TTableModel);
  T2.Name := 'OUTRA';
  SetLength(T2.Fields, 0);
  SetLength(Result.Tables, 2);
  Result.Tables[1] := T2;
end;

function TCompareTest.FindDiff(const ADiff: TDiffList; const AType,
  AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to High(ADiff) do
    if (ADiff[I].ObjectType = AType) and (SameText(ADiff[I].Name, AName)) then
      Exit(I);
  Result := -1;
end;

procedure TCompareTest.TabelaSoNoPrimeiro;
var
  Diff: TDiffList;
  I: Integer;
begin
  Diff := CompareSchemas(ModelA, ModelB);
  I := FindDiff(Diff, 'table', 'OUTRA');
  AssertTrue('tabela so no segundo encontrada', I >= 0);
  if I >= 0 then
    AssertTrue('marcada como so no segundo', Diff[I].Kind = dkOnlyInB);
end;

procedure TCompareTest.ColunaSoNoPrimeiro;
var
  Diff: TDiffList;
  I: Integer;
begin
  Diff := CompareSchemas(ModelA, ModelB);
  I := FindDiff(Diff, 'column', 'TABELA.NOME');
  AssertTrue('coluna so no primeiro encontrada', I >= 0);
  if I >= 0 then
    AssertTrue('marcada como so no primeiro', Diff[I].Kind = dkOnlyInA);
end;

procedure TCompareTest.ColunaComTipoDiferente;
var
  Diff: TDiffList;
  I: Integer;
  A, B: TSchemaModel;
  F: TFieldDefModel;
  T: TTableModel;
begin
  A := ModelA;
  B := ModelB;
  { No segundo esquema a coluna ID e varchar. }
  T := B.Tables[0];
  F := T.Fields[0];
  F.TypeName := 'VARCHAR';
  F.Length := 10;
  T.Fields[0] := F;
  B.Tables[0] := T;

  Diff := CompareSchemas(A, B);
  I := FindDiff(Diff, 'column', 'TABELA.ID');
  AssertTrue('coluna diferente encontrada', I >= 0);
  if I >= 0 then
    AssertTrue('marcada como diferente', Diff[I].Kind = dkDifferent);
end;

procedure TCompareTest.ScriptDeSincronizacao;
var
  Diff: TDiffList;
  Script: TStringArray;
  S: string;
  I: Integer;
begin
  Diff := CompareSchemas(ModelA, ModelB);

  { A -> B: cria a coluna que falta em B. }
  Script := BuildSyncScript(Diff, True);
  S := '';
  for I := 0 to High(Script) do
    S := S + Script[I] + LineEnding;
  AssertTrue('adiciona a coluna em B',
    Pos('alter table TABELA add NOME', S) > 0);

  { B -> A: cria a tabela que existe so em B. }
  Script := BuildSyncScript(Diff, False);
  S := '';
  for I := 0 to High(Script) do
    S := S + Script[I] + LineEnding;
  AssertTrue('cria a tabela em A', Pos('create table OUTRA', S) > 0);
end;

initialization
  RegisterTest(TCompareTest);

end.
