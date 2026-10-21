unit ibsecurity;
{ Usuarios, papeis e privilegios: montagem dos comandos GRANT/REVOKE e dos
  comandos de usuario e papel. Funcao pura, sem LCL nem banco. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil;

type
  { Privilegios que podem ser concedidos. }
  TPrivilegeKind = (pkSelect, pkInsert, pkUpdate, pkDelete, pkExecute,
    pkReferences, pkAll);

{ Nome do privilegio no SQL. }
function PrivilegeName(AKind: TPrivilegeKind): string;

{ "grant select, insert on T (A, B) to U with grant option".
  AObjectType: 'table' ou 'procedure'. AColumns: colunas (vazio = todas). }
function BuildGrantSQL(const AObjectType, AObjectName: string;
  const APrivileges: string; const AGrantee: string;
  const AColumns: TStringArray; AWithGrantOption: Boolean): string;

{ "revoke select on T from U". }
function BuildRevokeSQL(const AObjectType, AObjectName: string;
  const APrivileges: string; const AGrantee: string;
  const AColumns: TStringArray): string;

function BuildCreateUserSQL(const AName, APassword: string): string;
function BuildAlterUserSQL(const AName, APassword: string): string;
function BuildDropUserSQL(const AName: string): string;
function BuildCreateRoleSQL(const AName: string): string;
function BuildDropRoleSQL(const AName: string): string;

{ Lista de privilegios de um objeto, no formato "USER:TABELA:PRIVILEGIOS". }
function FormatPrivilegeLine(const AGrantee, AObjectName,
  APrivileges: string): string;

implementation

function PrivilegeName(AKind: TPrivilegeKind): string;
begin
  case AKind of
    pkSelect: Result := 'SELECT';
    pkInsert: Result := 'INSERT';
    pkUpdate: Result := 'UPDATE';
    pkDelete: Result := 'DELETE';
    pkExecute: Result := 'EXECUTE';
    pkReferences: Result := 'REFERENCES';
    pkAll: Result := 'ALL';
  else
    Result := '';
  end;
end;

function ColumnList(const AColumns: TStringArray): string;
var
  I: Integer;
begin
  Result := '';
  if Length(AColumns) = 0 then
    Exit;
  Result := ' (';
  for I := 0 to High(AColumns) do
  begin
    if I > 0 then
      Result := Result + ', ';
    Result := Result + QuoteIdentifier(AColumns[I]);
  end;
  Result := Result + ')';
end;

function BuildGrantSQL(const AObjectType, AObjectName: string;
  const APrivileges: string; const AGrantee: string;
  const AColumns: TStringArray; AWithGrantOption: Boolean): string;
begin
  Result := 'grant ' + APrivileges + ' on ' + AObjectType + ' ' +
    QuoteIdentifier(AObjectName) + ColumnList(AColumns) + ' to ' +
    QuoteIdentifier(AGrantee);
  if AWithGrantOption then
    Result := Result + ' with grant option';
end;

function BuildRevokeSQL(const AObjectType, AObjectName: string;
  const APrivileges: string; const AGrantee: string;
  const AColumns: TStringArray): string;
begin
  Result := 'revoke ' + APrivileges + ' on ' + AObjectType + ' ' +
    QuoteIdentifier(AObjectName) + ColumnList(AColumns) + ' from ' +
    QuoteIdentifier(AGrantee);
end;

function BuildCreateUserSQL(const AName, APassword: string): string;
begin
  Result := 'create user ' + QuoteIdentifier(AName);
  if APassword <> '' then
    Result := Result + ' password ' + QuotedStr(APassword);
end;

function BuildAlterUserSQL(const AName, APassword: string): string;
begin
  Result := 'alter user ' + QuoteIdentifier(AName);
  if APassword <> '' then
    Result := Result + ' password ' + QuotedStr(APassword);
end;

function BuildDropUserSQL(const AName: string): string;
begin
  Result := 'drop user ' + QuoteIdentifier(AName);
end;

function BuildCreateRoleSQL(const AName: string): string;
begin
  Result := 'create role ' + QuoteIdentifier(AName);
end;

function BuildDropRoleSQL(const AName: string): string;
begin
  Result := 'drop role ' + QuoteIdentifier(AName);
end;

function FormatPrivilegeLine(const AGrantee, AObjectName,
  APrivileges: string): string;
begin
  Result := AGrantee + ':' + AObjectName + ':' + APrivileges;
end;

end.
