unit tc_ddl;
{ Testes da geracao de DDL a partir do modelo de tabela. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibddl;

type
  TDdlTest = class(TTestCase)
  published
    procedure CriaTabelaComChave;
    procedure CriaComIndiceEFk;
    procedure AlteraAdicionaColuna;
    procedure AlteraRemoveColuna;
    procedure AlteraMudaTipo;
    procedure AlteraChavePrimaria;
    procedure RemoveTabela;
    procedure NomeMinusculoEhCitado;
  end;

function BaseModel: TTableModel;

implementation

function BaseModel: TTableModel;
var
  F: TFieldDefModel;
begin
  Result.Name := 'TABELA';
  Result.Description := '';
  Result.Fields := nil;
  Result.Indexes := nil;
  Result.ForeignKeys := nil;

  F := Default(TFieldDefModel);
  F.Name := 'ID';
  F.TypeName := 'INTEGER';
  F.NotNull := True;
  F.PrimaryKeyPos := 1;
  SetLength(Result.Fields, 1);
  Result.Fields[0] := F;

  F := Default(TFieldDefModel);
  F.Name := 'NOME';
  F.TypeName := 'VARCHAR';
  F.Length := 60;
  SetLength(Result.Fields, 2);
  Result.Fields[1] := F;
end;

function ScriptOf(const AModel: TTableModel): string;
var
  Stmts: TStringArray;
  I: Integer;
begin
  Stmts := CreateTableSQL(AModel);
  Result := '';
  for I := 0 to High(Stmts) do
    Result := Result + Stmts[I] + ' ';
end;

procedure TDdlTest.CriaTabelaComChave;
var
  S: string;
begin
  S := ScriptOf(BaseModel);
  AssertTrue('cria tabela', Pos('create table TABELA', S) > 0);
  AssertTrue('campo inteiro nao nulo', Pos('ID integer not null', S) > 0);
  AssertTrue('campo varchar com tamanho', Pos('NOME varchar(60)', S) > 0);
  AssertTrue('chave primaria', Pos('primary key (ID)', S) > 0);
end;

procedure TDdlTest.CriaComIndiceEFk;
var
  M: TTableModel;
  Idx: TIndexModel;
  Fk: TFkModel;
  S: string;
begin
  M := BaseModel;
  Idx := Default(TIndexModel);
  Idx.Name := 'IX_TABELA_NOME';
  SetLength(Idx.Fields, 1);
  Idx.Fields[0] := 'NOME';
  SetLength(M.Indexes, 1);
  M.Indexes[0] := Idx;

  Fk := Default(TFkModel);
  Fk.Name := 'FK_TABELA_OUTRA';
  SetLength(Fk.Fields, 1);
  Fk.Fields[0] := 'ID';
  Fk.RefTable := 'OUTRA';
  SetLength(Fk.RefFields, 1);
  Fk.RefFields[0] := 'ID';
  Fk.OnDelete := 'CASCADE';
  SetLength(M.ForeignKeys, 1);
  M.ForeignKeys[0] := Fk;

  S := ScriptOf(M);
  AssertTrue('cria indice', Pos('create index IX_TABELA_NOME on TABELA (NOME)', S) > 0);
  AssertTrue('cria chave estrangeira',
    Pos('foreign key (ID) references OUTRA (ID)', S) > 0);
  AssertTrue('regra on delete', Pos('on delete CASCADE', S) > 0);
end;

procedure TDdlTest.AlteraAdicionaColuna;
var
  OldM, NewM: TTableModel;
  F: TFieldDefModel;
  Stmts: TStringArray;
begin
  OldM := BaseModel;
  NewM := BaseModel;
  F := Default(TFieldDefModel);
  F.Name := 'EXTRA';
  F.TypeName := 'INTEGER';
  SetLength(NewM.Fields, 3);
  NewM.Fields[2] := F;

  Stmts := AlterTableSQL(OldM, NewM);
  AssertEquals('um comando', 1, Length(Stmts));
  AssertTrue('adiciona coluna',
    Pos('alter table TABELA add EXTRA integer', Stmts[0]) > 0);
end;

procedure TDdlTest.AlteraRemoveColuna;
var
  OldM, NewM: TTableModel;
  Stmts: TStringArray;
begin
  OldM := BaseModel;
  NewM := BaseModel;
  SetLength(NewM.Fields, 1);
  Stmts := AlterTableSQL(OldM, NewM);
  AssertEquals('remove coluna', 1, Length(Stmts));
  AssertTrue('comando de remocao',
    Pos('alter table TABELA drop NOME', Stmts[0]) > 0);
end;

procedure TDdlTest.AlteraMudaTipo;
var
  OldM, NewM: TTableModel;
  Stmts: TStringArray;
begin
  OldM := BaseModel;
  NewM := BaseModel;
  NewM.Fields[1].Length := 120;
  Stmts := AlterTableSQL(OldM, NewM);
  AssertEquals('um comando', 1, Length(Stmts));
  AssertTrue('altera tipo',
    Pos('alter table TABELA alter NOME varchar(120)', Stmts[0]) > 0);
end;

procedure TDdlTest.AlteraChavePrimaria;
var
  OldM, NewM: TTableModel;
  Stmts: TStringArray;
  S: string;
  I: Integer;
begin
  OldM := BaseModel;
  NewM := BaseModel;
  NewM.Fields[1].PrimaryKeyPos := 2;
  Stmts := AlterTableSQL(OldM, NewM);
  S := '';
  for I := 0 to High(Stmts) do
    S := S + Stmts[I] + ' ';
  AssertTrue('remove a chave antiga', Pos('drop constraint PK_TABELA', S) > 0);
  AssertTrue('cria a chave nova',
    Pos('add constraint PK_TABELA primary key (ID, NOME)', S) > 0);
end;

procedure TDdlTest.RemoveTabela;
begin
  AssertEquals('drop table', 'drop table TABELA;', DropTableSQL('TABELA'));
end;

procedure TDdlTest.NomeMinusculoEhCitado;
var
  M: TTableModel;
  S: string;
begin
  M := BaseModel;
  M.Name := 'tabela_teste';
  M.Fields[0].Name := 'id';
  M.Fields[1].Name := 'nome';
  S := ScriptOf(M);
  AssertTrue('nome minusculo entre aspas', Pos('create table "tabela_teste"', S) > 0);
  AssertTrue('coluna entre aspas', Pos('"id" integer not null', S) > 0);
end;

initialization
  RegisterTest(TDdlTest);

end.
