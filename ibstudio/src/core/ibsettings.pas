unit ibsettings;
{ Configuracoes persistentes do IBStudio em arquivo INI.
  Nao depende de LCL: o caminho do arquivo e informado pela UI. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, IniFiles, ibtypes;

const
  { Mesmas chaves usadas pelas versoes anteriores: a configuracao do usuario
    continua valida. A senha nunca e gravada. }
  SettingsSection = 'ultima';
  GeneralSection = 'geral';

type
  TStudioSettings = class
  private
    FFileName: string;
    FProfile: TConnectionProfile;
    FLastDirectory: string;
    procedure SetDefaults;
  public
    constructor Create(const AFileName: string);
    destructor Destroy; override;
    { Le o arquivo; se nao existir, mantem os valores padrao. }
    procedure Load;
    procedure Save;
    procedure Reset;
    property FileName: string read FFileName;
    property Profile: TConnectionProfile read FProfile;
    { Ultima pasta usada em abrir/salvar (exportacao, scripts). }
    property LastDirectory: string read FLastDirectory write FLastDirectory;
  end;

implementation

constructor TStudioSettings.Create(const AFileName: string);
begin
  inherited Create;
  FFileName := AFileName;
  SetDefaults;
end;

destructor TStudioSettings.Destroy;
begin
  FProfile.Free;
  inherited Destroy;
end;

procedure TStudioSettings.SetDefaults;
begin
  FreeAndNil(FProfile);
  FProfile := TConnectionProfile.Create;
  FLastDirectory := '';
end;

procedure TStudioSettings.Reset;
begin
  SetDefaults;
end;

procedure TStudioSettings.Load;
var
  Ini: TIniFile;
begin
  SetDefaults;
  if (FFileName = '') or not FileExists(FFileName) then
    Exit;

  Ini := TIniFile.Create(FFileName);
  try
    FProfile.Host := Ini.ReadString(SettingsSection, 'host', FProfile.Host);
    FProfile.Port := Ini.ReadInteger(SettingsSection, 'porta', FProfile.Port);
    FProfile.Database := Ini.ReadString(SettingsSection, 'banco', FProfile.Database);
    FProfile.User := Ini.ReadString(SettingsSection, 'usuario', FProfile.User);
    FProfile.Charset := Ini.ReadString(SettingsSection, 'charset', FProfile.Charset);
    FProfile.Dialect := Ini.ReadInteger(SettingsSection, 'dialeto', FProfile.Dialect);
    FLastDirectory := Ini.ReadString(GeneralSection, 'ultima_pasta', '');
  finally
    Ini.Free;
  end;
end;

procedure TStudioSettings.Save;
var
  Ini: TIniFile;
  Dir: string;
begin
  if FFileName = '' then
    Exit;

  Dir := ExtractFileDir(FFileName);
  if Dir <> '' then
    ForceDirectories(Dir);

  Ini := TIniFile.Create(FFileName);
  try
    Ini.WriteString(SettingsSection, 'host', FProfile.Host);
    Ini.WriteInteger(SettingsSection, 'porta', FProfile.Port);
    Ini.WriteString(SettingsSection, 'banco', FProfile.Database);
    Ini.WriteString(SettingsSection, 'usuario', FProfile.User);
    Ini.WriteString(SettingsSection, 'charset', FProfile.Charset);
    Ini.WriteInteger(SettingsSection, 'dialeto', FProfile.Dialect);
    if FLastDirectory <> '' then
      Ini.WriteString(GeneralSection, 'ultima_pasta', FLastDirectory)
    else
      Ini.DeleteKey(GeneralSection, 'ultima_pasta');
  finally
    Ini.Free;
  end;
end;

end.
