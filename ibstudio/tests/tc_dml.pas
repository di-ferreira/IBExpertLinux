unit tc_dml;
{ Testes da geracao de DML e do reconhecimento de consultas simples. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibdml;

type
  TDmlTest = class(TTestCase)
  published
    procedure ConsultaSimplesDeTabela;
    procedure ConsultaComJoinNaoEeditavel;
    procedure ConsultaComFuncaoNaoEeditavel;
    procedure LiteralComAspas;
    procedure GeraInsert;
    procedure GeraUpdate;
    procedure GeraDelete;
  end;

implementation

procedure TDmlTest.ConsultaSimplesDeTabela;
var
  Rel: string;
begin
  AssertTrue('select simples e reconhecido',
    IsSimpleRelationSelect('select first 100 * from TESTE_IBSTUDIO', Rel));
  AssertEquals('relacao citada', 'TESTE_IBSTUDIO', Rel);
end;

procedure TDmlTest.ConsultaComJoinNaoEeditavel;
var
  Rel: string;
begin
  AssertFalse('join nao e editavel',
    IsSimpleRelationSelect(
      'select a.id from clientes a join pedidos b on a.id = b.cliente_id', Rel));
end;

procedure TDmlTest.ConsultaComFuncaoNaoEeditavel;
var
  Rel: string;
begin
  AssertFalse('agregacao nao e editavel',
    IsSimpleRelationSelect('select count(*) from TESTE_IBSTUDIO', Rel));
  AssertFalse('subconsulta nao e editavel',
    IsSimpleRelationSelect('select * from T where id in (select id from U)', Rel));
end;

procedure TDmlTest.LiteralComAspas;
begin
  AssertEquals('texto com aspas', '''O''''Brien''', QuoteLiteral('O''Brien', False, False));
  AssertEquals('nulo', 'NULL', QuoteLiteral('', True, False));
  AssertEquals('numero sem aspas', '42', QuoteLiteral('42', False, True));
end;

procedure TDmlTest.GeraInsert;
var
  F: TFieldValueArray;
begin
  SetLength(F, 3);
  F[0].Name := 'ID';
  F[0].Value := '1';
  F[0].IsNumeric := True;
  F[1].Name := 'NOME';
  F[1].Value := 'O''Brien';
  F[2].Name := 'OBS';
  F[2].IsNull := True;

  AssertEquals('insert',
    'insert into TESTE (ID, NOME, OBS) values (1, ''O''''Brien'', NULL)',
    BuildInsert('TESTE', F));
end;

procedure TDmlTest.GeraUpdate;
var
  F, K: TFieldValueArray;
begin
  SetLength(F, 1);
  F[0].Name := 'NOME';
  F[0].Value := 'novo';

  SetLength(K, 1);
  K[0].Name := 'ID';
  K[0].Value := '1';
  K[0].IsNumeric := True;

  AssertEquals('update',
    'update TESTE set NOME = ''novo'' where ID = 1',
    BuildUpdate('TESTE', F, K));
end;

procedure TDmlTest.GeraDelete;
var
  K: TFieldValueArray;
begin
  SetLength(K, 1);
  K[0].Name := 'ID';
  K[0].Value := '1';
  K[0].IsNumeric := True;

  AssertEquals('delete', 'delete from TESTE where ID = 1',
    BuildDelete('TESTE', K));
end;

initialization
  RegisterTest(TDmlTest);

end.
