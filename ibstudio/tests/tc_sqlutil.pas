unit tc_sqlutil;
{ Testes do separador de comandos e da classificacao sintatica. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibsqlutil;

type
  TSQLUtilTest = class(TTestCase)
  published
    procedure SeparaDoisComandos;
    procedure IgnoraPontoEVirgulaEmString;
    procedure IgnoraPontoEVirgulaEmComentario;
    procedure RespeitaSetTerm;
    procedure RespeitaComentarioAninhado;
    procedure RespeitaIdentificadorComAspas;
    procedure DescartaComandoVazio;
    procedure ClassificaSelect;
    procedure ClassificaWith;
    procedure ClassificaExecuteBlock;
    procedure ClassificaDml;
    procedure ClassificaDdl;
    procedure ClassificaVazio;
    procedure ComentarioInicialNaoMudaTipo;
    procedure LeSetTerm;
  end;

implementation

procedure TSQLUtilTest.SeparaDoisComandos;
var
  S: TStatementArray;
begin
  S := SplitStatements('select 1 from rdb$database; select 2 from rdb$database;');
  AssertEquals('quantidade', 2, Length(S));
  AssertEquals('primeiro', 'select 1 from rdb$database', S[0].SQL);
  AssertEquals('segundo', 'select 2 from rdb$database', S[1].SQL);
end;

procedure TSQLUtilTest.IgnoraPontoEVirgulaEmString;
var
  S: TStatementArray;
begin
  S := SplitStatements('select ''a;b'' from rdb$database;');
  AssertEquals('quantidade', 1, Length(S));
  AssertEquals('conteudo', 'select ''a;b'' from rdb$database', S[0].SQL);
end;

procedure TSQLUtilTest.IgnoraPontoEVirgulaEmComentario;
var
  S: TStatementArray;
begin
  S := SplitStatements('select 1 -- aqui; nao separa' + LineEnding + 'from rdb$database;');
  AssertEquals('quantidade', 1, Length(S));
end;

procedure TSQLUtilTest.RespeitaSetTerm;
var
  Script: string;
  S: TStatementArray;
begin
  Script :=
    'SET TERM ^ ;' + LineEnding +
    'create trigger t for tab before insert as' + LineEnding +
    'begin' + LineEnding +
    '  new.x = 1;' + LineEnding +
    'end^' + LineEnding +
    'SET TERM ; ^' + LineEnding +
    'select 1 from rdb$database;';
  S := SplitStatements(Script);
  AssertEquals('quantidade', 2, Length(S));
  AssertEquals('tipo do trigger', Ord(skDdl), Ord(S[0].Kind));
  AssertTrue('corpo contem ponto e virgula', Pos('new.x = 1;', S[0].SQL) > 0);
  AssertEquals('segundo comando', 'select 1 from rdb$database', S[1].SQL);
end;

procedure TSQLUtilTest.RespeitaComentarioAninhado;
var
  S: TStatementArray;
begin
  S := SplitStatements('/* fora /* dentro; */ ainda; */ select 1 from rdb$database;');
  AssertEquals('quantidade', 1, Length(S));
  AssertTrue('comeca com select', Pos('select 1', S[0].SQL) > 0);
end;

procedure TSQLUtilTest.RespeitaIdentificadorComAspas;
var
  S: TStatementArray;
begin
  S := SplitStatements('select "nome;estranho" from t;');
  AssertEquals('quantidade', 1, Length(S));
end;

procedure TSQLUtilTest.DescartaComandoVazio;
var
  S: TStatementArray;
begin
  S := SplitStatements(';;; select 1 from rdb$database;;;');
  AssertEquals('quantidade', 1, Length(S));
end;

procedure TSQLUtilTest.ClassificaSelect;
begin
  AssertEquals(Ord(skSelect), Ord(DetectStatementKind('  select * from t')));
  AssertEquals(Ord(skSelect), Ord(DetectStatementKind('execute procedure p')));
end;

procedure TSQLUtilTest.ClassificaWith;
begin
  AssertEquals(Ord(skSelect), Ord(DetectStatementKind('with x as (select 1 from rdb$database) select * from x')));
end;

procedure TSQLUtilTest.ClassificaExecuteBlock;
begin
  AssertEquals(Ord(skExecBlock), Ord(DetectStatementKind('execute block returns (x integer) as begin suspend; end')));
end;

procedure TSQLUtilTest.ClassificaDml;
begin
  AssertEquals(Ord(skDml), Ord(DetectStatementKind('insert into t values (1)')));
  AssertEquals(Ord(skDml), Ord(DetectStatementKind('update t set a = 1')));
  AssertEquals(Ord(skDml), Ord(DetectStatementKind('delete from t')));
  AssertEquals(Ord(skDml), Ord(DetectStatementKind('merge into t using s on 1=1 when matched then update set a=1')));
end;

procedure TSQLUtilTest.ClassificaDdl;
begin
  AssertEquals(Ord(skDdl), Ord(DetectStatementKind('create table t (a integer)')));
  AssertEquals(Ord(skDdl), Ord(DetectStatementKind('alter table t add b integer')));
  AssertEquals(Ord(skDdl), Ord(DetectStatementKind('grant select on t to public')));
  AssertEquals(Ord(skDdl), Ord(DetectStatementKind('set statistics index i')));
end;

procedure TSQLUtilTest.ClassificaVazio;
begin
  AssertEquals(Ord(skEmpty), Ord(DetectStatementKind('')));
  AssertEquals(Ord(skEmpty), Ord(DetectStatementKind('   -- so comentario')));
  AssertEquals(Ord(skEmpty), Ord(DetectStatementKind('/* nada */')));
end;

procedure TSQLUtilTest.ComentarioInicialNaoMudaTipo;
begin
  AssertEquals(Ord(skSelect), Ord(DetectStatementKind('-- nota' + LineEnding + 'select 1 from rdb$database')));
  AssertEquals(Ord(skDml), Ord(DetectStatementKind('/* nota */ delete from t')));
end;

procedure TSQLUtilTest.LeSetTerm;
var
  T: string;
begin
  AssertTrue('reconhece', TryParseSetTerm('SET TERM ^ ;', T));
  AssertEquals('terminador', '^', T);
  AssertFalse('nao e set term', TryParseSetTerm('select 1 from rdb$database', T));
end;

initialization
  RegisterTest(TSQLUtilTest);

end.
