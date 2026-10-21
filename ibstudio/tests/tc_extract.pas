unit tc_extract;
{ Testes da extracao do script de criacao do banco. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibddl, ibschema,
  ibextract;

type
  TExtractTest = class(TTestCase)
  private
    function Model: TSchemaModel;
    function ScriptOf(const AOptions: TExtractOptions): string;
  published
    procedure OrdemDosObjetos;
    procedure IncludeDomainioETabela;
    procedure OpcoesDeIndice;
    procedure Descricoes;
    procedure ObjetosSeparados;
  end;

implementation

function TExtractTest.Model: TSchemaModel;
var
  T: TTableModel;
  F: TFieldDefModel;
  D: TDomainModel;
  E: TExceptionModel;
  G: TGeneratorModel;
  P, G2: TCodeObject;
begin
  Result := NewSchemaModel;

  D := Default(TDomainModel);
  D.Name := 'DOM_NOME';
  D.TypeName := 'varchar(30)';
  SetLength(Result.Domains, 1);
  Result.Domains[0] := D;

  E := Default(TExceptionModel);
  E.Name := 'EXC_TESTE';
  E.Message := 'erro de teste';
  SetLength(Result.Exceptions, 1);
  Result.Exceptions[0] := E;

  G := Default(TGeneratorModel);
  G.Name := 'GEN_TESTE';
  G.InitialValue := 100;
  SetLength(Result.Generators, 1);
  Result.Generators[0] := G;

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

  P := Default(TCodeObject);
  P.Kind := ckProcedure;
  P.Name := 'PROC_TESTE';
  P.Source := 'begin exit; end';
  SetLength(Result.Procedures, 1);
  Result.Procedures[0] := P;

  G2 := Default(TCodeObject);
  G2.Kind := ckTrigger;
  G2.Name := 'TRG_TESTE';
  G2.Source := 'as begin end';
  G2.Prefix := 'for TABELA after insert ';
  SetLength(Result.Triggers, 1);
  Result.Triggers[0] := G2;
end;

function TExtractTest.ScriptOf(const AOptions: TExtractOptions): string;
var
  Script: TStringArray;
  I: Integer;
begin
  Script := ExtractScript(Model, AOptions);
  Result := '';
  for I := 0 to High(Script) do
    Result := Result + Script[I] + LineEnding;
end;

procedure TExtractTest.OrdemDosObjetos;
var
  O: TExtractOptions;
  S: string;
  PDomain, PTable, PProc: Integer;
begin
  DefaultExtractOptions(O);
  S := ScriptOf(O);
  PDomain := Pos('create domain', S);
  PTable := Pos('create table', S);
  PProc := Pos('create or alter procedure', S);
  AssertTrue('dominio no script', PDomain > 0);
  AssertTrue('tabela no script', PTable > 0);
  AssertTrue('procedure no script', PProc > 0);
  AssertTrue('dominio antes da tabela', PDomain < PTable);
  AssertTrue('tabela antes da procedure', PTable < PProc);
  AssertTrue('exception no script', Pos('create exception', S) > 0);
  AssertTrue('gerador no script', Pos('create sequence', S) > 0);
  AssertTrue('trigger no script', Pos('create or alter trigger', S) > 0);
  AssertTrue('evento do trigger', Pos('after insert', S) > 0);
end;

procedure TExtractTest.IncludeDomainioETabela;
var
  O: TExtractOptions;
  S: string;
begin
  DefaultExtractOptions(O);
  S := ScriptOf(O);
  AssertTrue('tabela com chave primaria',
    Pos('primary key (ID)', S) > 0);
  AssertTrue('campo nao nulo', Pos('ID integer not null', S) > 0);
end;

procedure TExtractTest.OpcoesDeIndice;
var
  O: TExtractOptions;
  S: string;
begin
  DefaultExtractOptions(O);
  O.IncludeIndexes := False;
  S := ScriptOf(O);
  AssertTrue('sem create index', Pos('create index', S) = 0);
end;

procedure TExtractTest.Descricoes;
var
  O: TExtractOptions;
  M: TSchemaModel;
  Script: TStringArray;
  S: string;
  I: Integer;
begin
  DefaultExtractOptions(O);
  M := Model;
  M.Tables[0].Fields[1].Description := 'nome do cliente';
  Script := ExtractScript(M, O);
  S := '';
  for I := 0 to High(Script) do
    S := S + Script[I] + LineEnding;
  AssertTrue('comentario da coluna', Pos('comment on column', S) > 0);
end;

procedure TExtractTest.ObjetosSeparados;
var
  O: TExtractOptions;
  Objects: TExtractObjectArray;
  I: Integer;
  Found: Boolean;
begin
  DefaultExtractOptions(O);
  Objects := ExtractObjects(Model, O);
  AssertTrue('varios objetos', Length(Objects) >= 5);
  Found := False;
  for I := 0 to High(Objects) do
    if Objects[I].FileName = 'table_TABELA.sql' then
      Found := True;
  AssertTrue('arquivo da tabela', Found);
end;

initialization
  RegisterTest(TExtractTest);

end.
