unit tc_describe;
{ Testes da analise do texto sob o cursor. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibdescribe;

type
  TDescribeTest = class(TTestCase)
  published
    procedure PalavraNoCursor;
    procedure ObjetoComTabela;
    procedure ObjetoComApelido;
    procedure ChamadaDeProcedure;
    procedure ObjetoAntesDoCursor;
  end;

implementation

procedure TDescribeTest.PalavraNoCursor;
begin
  AssertEquals('palavra', 'nome', WordAt('select nome from t', 9));
  AssertEquals('vazio fora de palavra', '', WordAt('select  from t', 8));
end;

procedure TDescribeTest.ObjetoComTabela;
var
  Obj: string;
begin
  AssertTrue('objeto encontrado', ObjectAtCursor('select nome from clientes', 9, Obj));
  AssertEquals('objeto', 'nome', Obj);
end;

procedure TDescribeTest.ObjetoComApelido;
var
  Obj: string;
begin
  AssertTrue('objeto encontrado',
    ObjectAtCursor('select c.nome from clientes c', 10, Obj));
  AssertEquals('objeto', 'c.nome', Obj);
end;

procedure TDescribeTest.ChamadaDeProcedure;
begin
  { O cursor esta logo depois do abre parenteses (posicao 30). }
  AssertEquals('procedure', 'minha_proc',
    ProcedureCallBefore('execute procedure minha_proc(', 30));
  AssertEquals('sem chamada', '',
    ProcedureCallBefore('select 1 from t', 10));
end;

procedure TDescribeTest.ObjetoAntesDoCursor;
begin
  AssertEquals('campo', 'nome', ObjectBeforeCursor('select nome'));
  AssertEquals('campo com espaco', 'nome', ObjectBeforeCursor('select nome '));
  AssertEquals('tabela e campo', 'clientes.nome',
    ObjectBeforeCursor('select clientes.nome'));
  { Depois de um espaco, o objeto citado e a ultima palavra. }
  AssertEquals('ultima palavra', 'select', ObjectBeforeCursor('select '));
  AssertEquals('vazio', '', ObjectBeforeCursor('  '));
end;

initialization
  RegisterTest(TDescribeTest);

end.
