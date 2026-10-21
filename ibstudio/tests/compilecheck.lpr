program compilecheck;
{ Verifica a compilacao das unidades do nucleo que dependem de banco
  (ibsession arrasta sqldb/IBConnection). Nao abre conexao nenhuma. }

{$mode objfpc}{$H+}

uses
  ibtypes, ibsqlutil, ibmetadata, ibsettings, ibdml, ibcsv, ibddl, ibcode,
  ibtools, ibschema, ibextract, ibcompare, ibformat, ibtemplates, ibdescribe,
  ibhistory, ibsecurity, ibsession;

begin
end.
