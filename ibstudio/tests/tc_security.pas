unit tc_security;
{ Testes dos comandos de usuario, papel e privilegios. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibsecurity;

type
  TSecurityTest = class(TTestCase)
  published
    procedure ConcedePrivilegios;
    procedure ConcedeComColunas;
    procedure ConcedeComGrantOption;
    procedure RevogaPrivilegios;
    procedure ComandosDeUsuario;
    procedure ComandosDePapel;
  end;

implementation

procedure TSecurityTest.ConcedePrivilegios;
begin
  AssertEquals('grant',
    'grant SELECT, INSERT on table TABELA to USUARIO',
    BuildGrantSQL('table', 'TABELA', 'SELECT, INSERT', 'USUARIO', nil, False));
end;

procedure TSecurityTest.ConcedeComColunas;
var
  Cols: TStringArray;
begin
  SetLength(Cols, 2);
  Cols[0] := 'ID';
  Cols[1] := 'NOME';
  AssertEquals('grant por colunas',
    'grant SELECT on table TABELA (ID, NOME) to USUARIO',
    BuildGrantSQL('table', 'TABELA', 'SELECT', 'USUARIO', Cols, False));
end;

procedure TSecurityTest.ConcedeComGrantOption;
begin
  AssertEquals('grant option',
    'grant ALL on table TABELA to USUARIO with grant option',
    BuildGrantSQL('table', 'TABELA', 'ALL', 'USUARIO', nil, True));
end;

procedure TSecurityTest.RevogaPrivilegios;
begin
  AssertEquals('revoke',
    'revoke SELECT on table TABELA from USUARIO',
    BuildRevokeSQL('table', 'TABELA', 'SELECT', 'USUARIO', nil));
end;

procedure TSecurityTest.ComandosDeUsuario;
begin
  AssertEquals('create user',
    'create user USUARIO password ''senha''',
    BuildCreateUserSQL('USUARIO', 'senha'));
  AssertEquals('alter user',
    'alter user USUARIO password ''outra''',
    BuildAlterUserSQL('USUARIO', 'outra'));
  AssertEquals('drop user', 'drop user USUARIO', BuildDropUserSQL('USUARIO'));
end;

procedure TSecurityTest.ComandosDePapel;
begin
  AssertEquals('create role', 'create role PAPEL',
    BuildCreateRoleSQL('PAPEL'));
  AssertEquals('drop role', 'drop role PAPEL', BuildDropRoleSQL('PAPEL'));
end;

initialization
  RegisterTest(TSecurityTest);

end.
