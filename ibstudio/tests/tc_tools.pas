unit tc_tools;
{ Testes dos argumentos das ferramentas administrativas. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibtools;

type
  TToolsTest = class(TTestCase)
  private
    function Profile: TConnectionProfile;
    function HasArg(const AArgs: TStringArray; const AValue: string): Boolean;
  published
    procedure ConexaoDasFerramentas;
    procedure ArgumentosDeBackup;
    procedure ArgumentosDeRestore;
    procedure ArgumentosDeValidacao;
    procedure ArgumentosDeEstatisticas;
  end;

implementation

function TToolsTest.Profile: TConnectionProfile;
begin
  Result := TConnectionProfile.Create;
  Result.Host := 'localhost';
  Result.Port := 3050;
  Result.Database := '/tmp/teste.fdb';
  Result.User := 'SYSDBA';
  Result.Charset := 'UTF8';
  Result.Dialect := 3;
end;

function TToolsTest.HasArg(const AArgs: TStringArray; const AValue: string): Boolean;
var
  I: Integer;
begin
  for I := 0 to High(AArgs) do
    if AArgs[I] = AValue then
      Exit(True);
  Result := False;
end;

procedure TToolsTest.ConexaoDasFerramentas;
var
  P: TConnectionProfile;
begin
  P := Profile;
  try
    AssertEquals('conexao', 'localhost/3050:/tmp/teste.fdb',
      ToolConnectionString(P));
  finally
    P.Free;
  end;
end;

procedure TToolsTest.ArgumentosDeBackup;
var
  P: TConnectionProfile;
  O: TToolOptions;
  Args: TStringArray;
begin
  P := Profile;
  try
    O := Default(TToolOptions);
    O.Verbose := True;
    O.IgnoreChecksum := True;
    O.MetadataOnly := True;
    O.PageSize := 8192;
    Args := BuildBackupArgs(P, '/tmp/backup.fbk', O);
    AssertTrue('modo backup', HasArg(Args, '-b'));
    AssertTrue('detalhado', HasArg(Args, '-v'));
    AssertTrue('ignora checksum', HasArg(Args, '-i'));
    AssertTrue('somente metadados', HasArg(Args, '-m'));
    AssertTrue('tamanho de pagina', HasArg(Args, '8192'));
    AssertTrue('arquivo', HasArg(Args, '/tmp/backup.fbk'));
    AssertTrue('banco', HasArg(Args, 'localhost/3050:/tmp/teste.fdb'));
  finally
    P.Free;
  end;
end;

procedure TToolsTest.ArgumentosDeRestore;
var
  P: TConnectionProfile;
  O: TToolOptions;
  Args: TStringArray;
begin
  P := Profile;
  try
    O := Default(TToolOptions);
    O.ReplaceExisting := True;
    Args := BuildRestoreArgs(P, '/tmp/backup.fbk', O);
    AssertTrue('modo restore', HasArg(Args, '-c'));
    AssertTrue('substitui', HasArg(Args, '-rep'));
    AssertTrue('arquivo', HasArg(Args, '/tmp/backup.fbk'));
  finally
    P.Free;
  end;
end;

procedure TToolsTest.ArgumentosDeValidacao;
var
  P: TConnectionProfile;
  Args: TStringArray;
begin
  P := Profile;
  try
    Args := BuildValidateArgs(P, Default(TToolOptions));
    AssertTrue('valida', HasArg(Args, '-v'));
    AssertTrue('banco', HasArg(Args, 'localhost/3050:/tmp/teste.fdb'));
  finally
    P.Free;
  end;
end;

procedure TToolsTest.ArgumentosDeEstatisticas;
var
  P: TConnectionProfile;
  Args: TStringArray;
begin
  P := Profile;
  try
    Args := BuildStatsArgs(P, Default(TToolOptions));
    AssertTrue('cabecalho', HasArg(Args, '-h'));
    AssertTrue('banco', HasArg(Args, 'localhost/3050:/tmp/teste.fdb'));
  finally
    P.Free;
  end;
end;

initialization
  RegisterTest(TToolsTest);

end.
