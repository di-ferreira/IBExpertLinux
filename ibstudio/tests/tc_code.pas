unit tc_code;
{ Testes dos comandos dos editores de codigo. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibcode;

type
  TCodeTest = class(TTestCase)
  published
    procedure CriaProcedure;
    procedure ProcedureComAsNaoRepete;
    procedure CriaTrigger;
    procedure CriaView;
    procedure CriaDomain;
    procedure CriaException;
    procedure RemoveObjetos;
    procedure LinhaDoErro;
    procedure ComentaCodigo;
    procedure EventoDoTrigger;
  end;

implementation

procedure TCodeTest.CriaProcedure;
begin
  AssertEquals('procedure',
    'create or alter procedure P as begin end',
    CreateOrAlterSQL(ckProcedure, 'P', 'begin end', ''));
end;

procedure TCodeTest.ProcedureComAsNaoRepete;
begin
  AssertEquals('procedure com as',
    'create or alter procedure P AS begin end',
    CreateOrAlterSQL(ckProcedure, 'P', 'AS begin end', ''));
end;

procedure TCodeTest.CriaTrigger;
begin
  AssertEquals('trigger',
    'create or alter trigger T for TABELA after insert AS begin end',
    CreateOrAlterSQL(ckTrigger, 'T', 'AS begin end', 'for TABELA after insert '));
end;

procedure TCodeTest.CriaView;
begin
  AssertEquals('view',
    'create or alter view V (A) as select 1 from rdb$database',
    CreateOrAlterSQL(ckView, 'V', 'select 1 from rdb$database', '(A) '));
end;

procedure TCodeTest.CriaDomain;
begin
  AssertEquals('domain',
    'create domain D as varchar(60)',
    CreateOrAlterSQL(ckDomain, 'D', 'varchar(60)', ''));
end;

procedure TCodeTest.CriaException;
begin
  AssertEquals('exception',
    'create or alter exception E ''mensagem''',
    CreateOrAlterSQL(ckException, 'E', 'mensagem', ''));
end;

procedure TCodeTest.RemoveObjetos;
begin
  AssertEquals('drop procedure', 'drop procedure P',
    DropObjectSQL(ckProcedure, 'P'));
  AssertEquals('drop generator vira sequence', 'drop sequence G',
    DropObjectSQL(ckGenerator, 'G'));
end;

procedure TCodeTest.LinhaDoErro;
begin
  AssertEquals('linha do erro', 3,
    ErrorLineNumber('-Dynamic SQL Error' + LineEnding + '-At line 3, column 5'));
  AssertEquals('sem linha', 0, ErrorLineNumber('erro qualquer'));
end;

procedure TCodeTest.ComentaCodigo;
begin
  AssertEquals('comenta', '-- linha1' + LineEnding + '-- linha2',
    CommentLines('linha1' + LineEnding + 'linha2', True));
  AssertEquals('descomenta', 'linha1' + LineEnding + 'linha2',
    CommentLines('-- linha1' + LineEnding + '-- linha2', False));
end;

procedure TCodeTest.EventoDoTrigger;
begin
  AssertEquals('after insert', 'after insert', TriggerEventSQL(2));
  AssertEquals('before update', 'before update', TriggerEventSQL(3));
  AssertEquals('after delete', 'after delete', TriggerEventSQL(6));
  AssertEquals('insert or update', 'after insert or update', TriggerEventSQL(18));
end;

initialization
  RegisterTest(TCodeTest);

end.
