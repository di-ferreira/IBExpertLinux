unit tc_settings;
{ Testes das configuracoes persistentes (INI). }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IniFiles, fpcunit, testregistry, ibtypes, ibsettings;

type
  TSettingsTest = class(TTestCase)
  private
    FFile: string;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure ValoresPadraoSemArquivo;
    procedure GravaEReLe;
    procedure SenhaNaoEhGravada;
    procedure ChaveAusenteMantemPadrao;
  end;

implementation

procedure TSettingsTest.SetUp;
begin
  FFile := GetTempFileName(GetTempDir, 'ibstudio-settings');
  DeleteFile(FFile);
end;

procedure TSettingsTest.TearDown;
begin
  if FileExists(FFile) then
    DeleteFile(FFile);
end;

procedure TSettingsTest.ValoresPadraoSemArquivo;
var
  S: TStudioSettings;
begin
  S := TStudioSettings.Create(FFile);
  try
    S.Load;
    AssertEquals('host padrao', 'localhost', S.Profile.Host);
    AssertEquals('porta padrao', 3050, S.Profile.Port);
    AssertEquals('usuario padrao', 'SYSDBA', S.Profile.User);
    AssertEquals('charset padrao', 'UTF8', S.Profile.Charset);
  finally
    S.Free;
  end;
end;

procedure TSettingsTest.GravaEReLe;
var
  S: TStudioSettings;
begin
  S := TStudioSettings.Create(FFile);
  try
    S.Profile.Host := 'servidor';
    S.Profile.Port := 3051;
    S.Profile.Database := '/dados/teste.fdb';
    S.Profile.User := 'ana';
    S.Profile.Charset := 'ISO8859_1';
    S.Profile.Dialect := 1;
    S.LastDirectory := '/tmp/export';
    S.Save;
  finally
    S.Free;
  end;

  S := TStudioSettings.Create(FFile);
  try
    S.Load;
    AssertEquals('host', 'servidor', S.Profile.Host);
    AssertEquals('porta', 3051, S.Profile.Port);
    AssertEquals('banco', '/dados/teste.fdb', S.Profile.Database);
    AssertEquals('usuario', 'ana', S.Profile.User);
    AssertEquals('charset', 'ISO8859_1', S.Profile.Charset);
    AssertEquals('dialeto', 1, S.Profile.Dialect);
    AssertEquals('ultima pasta', '/tmp/export', S.LastDirectory);
  finally
    S.Free;
  end;
end;

procedure TSettingsTest.SenhaNaoEhGravada;
var
  S: TStudioSettings;
begin
  S := TStudioSettings.Create(FFile);
  try
    S.Profile.Password := 'segredo';
    S.Save;
  finally
    S.Free;
  end;

  S := TStudioSettings.Create(FFile);
  try
    S.Load;
    AssertEquals('senha nao persiste', '', S.Profile.Password);
  finally
    S.Free;
  end;
end;

procedure TSettingsTest.ChaveAusenteMantemPadrao;
var
  Ini: TIniFile;
  S: TStudioSettings;
begin
  Ini := TIniFile.Create(FFile);
  try
    Ini.WriteString('ultima', 'host', 'outro');
  finally
    Ini.Free;
  end;

  S := TStudioSettings.Create(FFile);
  try
    S.Load;
    AssertEquals('host lido', 'outro', S.Profile.Host);
    AssertEquals('porta continua padrao', 3050, S.Profile.Port);
    AssertEquals('charset continua padrao', 'UTF8', S.Profile.Charset);
  finally
    S.Free;
  end;
end;

initialization
  RegisterTest(TSettingsTest);

end.
