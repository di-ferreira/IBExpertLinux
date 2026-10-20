unit ibtools;
{ Ferramentas administrativas do Firebird (gbak, gfix, gstat): montagem dos
  argumentos e execucao com saida em log. Nao depende de LCL. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, process, ibtypes;

type
  { Recebe cada linha de saida da ferramenta. }
  TToolLineEvent = procedure(const ALine: string) of object;

  { Opcoes comuns de backup e restore. }
  TToolOptions = record
    Verbose: Boolean;          { -v }
    IgnoreChecksum: Boolean;    { -i }
    DeactivateIndexes: Boolean; { -t }
    UseAllSpace: Boolean;       { -s }
    MetadataOnly: Boolean;      { -m (somente metadados) }
    GarbageCollection: Boolean; { -g (coleta de lixo) }
    ReplaceExisting: Boolean;   { -r (restaurar sobre existente) }
    PageSize: Integer;          { -p }
  end;

  { Resultado de uma execucao. }
  TToolResult = class
  private
    FExitCode: Integer;
    FOutput: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    property ExitCode: Integer read FExitCode write FExitCode;
    property Output: TStringList read FOutput;
  end;

{ Procura a ferramenta no PATH e nos diretorios habituais do Firebird. }
function FindFirebirdTool(const AName: string): string;

{ Conexao no formato das ferramentas: usuario@host:porta:/caminho/banco. }
function ToolConnectionString(const AProfile: TConnectionProfile): string;

function BuildBackupArgs(const AProfile: TConnectionProfile; const AFileName: string;
  const AOptions: TToolOptions): TStringArray;
function BuildRestoreArgs(const AProfile: TConnectionProfile; const AFileName: string;
  const AOptions: TToolOptions): TStringArray;
function BuildValidateArgs(const AProfile: TConnectionProfile;
  const AOptions: TToolOptions): TStringArray;
function BuildStatsArgs(const AProfile: TConnectionProfile;
  const AOptions: TToolOptions): TStringArray;

{ Executa a ferramenta; AOnLine recebe cada linha da saida. O usuario e a
  senha vao por variavel de ambiente, para nao aparecerem na linha de
  comando. }
function RunTool(const AExe: string; const AArgs: TStringArray; const AUser,
  APassword: string; AOnLine: TToolLineEvent = nil): TToolResult;

implementation

{ Separador do PATH: ':' no Unix, ';' no Windows. }
{$IFDEF UNIX}
const PathSeparator = ':';
{$ELSE}
const PathSeparator = ';';
{$ENDIF}

function ToArray(const ALines: TStrings): TStringArray;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALines.Count);
  for I := 0 to ALines.Count - 1 do
    Result[I] := ALines[I];
end;

constructor TToolResult.Create;
begin
  inherited Create;
  FOutput := TStringList.Create;
end;

destructor TToolResult.Destroy;
begin
  FOutput.Free;
  inherited Destroy;
end;

function FindFirebirdTool(const AName: string): string;
var
  Candidates: array[0..6] of string;
  I, I2, J: Integer;
  Path, Candidate: string;
begin
  Candidates[0] := AName;
  Candidates[1] := AName + '-3.0';
  Candidates[2] := AName + '-2.5';
  Candidates[3] := '/opt/firebird/bin/' + AName;
  Candidates[4] := '/usr/lib/firebird/' + AName;
  Candidates[5] := '/usr/sbin/' + AName;
  Candidates[6] := '/usr/local/bin/' + AName;

  for I := 0 to High(Candidates) do
    if FileExists(Candidates[I]) then
      Exit(Candidates[I]);

  { Procura no PATH. }
  Path := GetEnvironmentVariable('PATH');
  if Path = '' then
    Exit('');
  I := 1;
  while I <= Length(Path) do
  begin
    J := Pos(PathSeparator, Copy(Path, I, MaxInt));
    if J = 0 then
    begin
      Candidate := Copy(Path, I, MaxInt);
      I := Length(Path) + 1;
    end
    else
    begin
      Candidate := Copy(Path, I, J - 1);
      Inc(I, J);
    end;
    if Candidate <> '' then
    begin
      Candidate := IncludeTrailingPathDelimiter(Candidate);
      for I2 := 0 to 1 do
        if FileExists(Candidate + Candidates[I2]) then
          Exit(Candidate + Candidates[I2]);
    end;
  end;

  Result := '';
end;

function ToolConnectionString(const AProfile: TConnectionProfile): string;
var
  Host: string;
begin
  { O usuario e a senha vao por variavel de ambiente (ISC_USER/ISC_PASSWORD);
    o formato e "servidor/porta:/caminho/banco". }
  Host := '';
  if AProfile.Host <> '' then
  begin
    Host := AProfile.Host;
    if AProfile.Port > 0 then
      Host := Host + '/' + IntToStr(AProfile.Port);
    Host := Host + ':';
  end;
  Result := Host + AProfile.Database;
end;

function BuildBackupArgs(const AProfile: TConnectionProfile; const AFileName: string;
  const AOptions: TToolOptions): TStringArray;
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.Add('-b');
    if AOptions.Verbose then
      L.Add('-v');
    if AOptions.IgnoreChecksum then
      L.Add('-i');
    if AOptions.MetadataOnly then
      L.Add('-m');
    if AOptions.GarbageCollection then
      L.Add('-g');
    if AOptions.DeactivateIndexes then
      L.Add('-t');
    if AOptions.UseAllSpace then
      L.Add('-s');
    if AOptions.PageSize > 0 then
    begin
      L.Add('-p');
      L.Add(IntToStr(AOptions.PageSize));
    end;
    L.Add(ToolConnectionString(AProfile));
    L.Add(AFileName);
    Result := ToArray(L);
  finally
    L.Free;
  end;
end;

function BuildRestoreArgs(const AProfile: TConnectionProfile; const AFileName: string;
  const AOptions: TToolOptions): TStringArray;
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.Add('-c');
    if AOptions.Verbose then
      L.Add('-v');
    if AOptions.IgnoreChecksum then
      L.Add('-i');
    if AOptions.ReplaceExisting then
      L.Add('-rep');
    if AOptions.DeactivateIndexes then
      L.Add('-t');
    if AOptions.UseAllSpace then
      L.Add('-s');
    if AOptions.PageSize > 0 then
    begin
      L.Add('-p');
      L.Add(IntToStr(AOptions.PageSize));
    end;
    L.Add(AFileName);
    L.Add(ToolConnectionString(AProfile));
    Result := ToArray(L);
  finally
    L.Free;
  end;
end;

function BuildValidateArgs(const AProfile: TConnectionProfile;
  const AOptions: TToolOptions): TStringArray;
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.Add('-v');
    L.Add(ToolConnectionString(AProfile));
    Result := ToArray(L);
  finally
    L.Free;
  end;
end;

function BuildStatsArgs(const AProfile: TConnectionProfile;
  const AOptions: TToolOptions): TStringArray;
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.Add('-h');
    if AOptions.Verbose then
      L.Add('-d');
    L.Add(ToolConnectionString(AProfile));
    Result := ToArray(L);
  finally
    L.Free;
  end;
end;

{ Le uma linha do fluxo; devolve '' quando nao ha mais dados. }
function ReadLineFrom(AStream: TStream; var ABuffer: string): string;
var
  Buf: array[0..1023] of Char;
  N, P: Integer;
begin
  Result := '';
  while True do
  begin
    P := Pos(#10, ABuffer);
    if P > 0 then
    begin
      Result := Copy(ABuffer, 1, P - 1);
      ABuffer := Copy(ABuffer, P + 1, MaxInt);
      Exit;
    end;
    if AStream = nil then
      Exit;
    N := AStream.Read(Buf, SizeOf(Buf));
    if N <= 0 then
    begin
      Result := ABuffer;
      ABuffer := '';
      Exit;
    end;
    ABuffer := ABuffer + Buf[0..N - 1];
  end;
end;

function RunTool(const AExe: string; const AArgs: TStringArray; const AUser,
  APassword: string; AOnLine: TToolLineEvent = nil): TToolResult;
var
  P: TProcess;
  I: Integer;
  Line, Buffer: string;
begin
  Result := TToolResult.Create;
  if AExe = '' then
  begin
    Result.Output.Add('Ferramenta nao encontrada.');
    Result.ExitCode := -1;
    Exit;
  end;

  P := TProcess.Create(nil);
  try
    P.Executable := AExe;
    for I := 0 to High(AArgs) do
      P.Parameters.Add(AArgs[I]);
    P.ShowWindow := TShowWindowOptions(0);   { 0 = sem janela }
    P.Options := [poUsePipes, poStderrToOutPut];
    { A senha vai por variavel de ambiente: nunca aparece na linha de
      comando nem no log. }
    if AUser <> '' then
      P.Environment.Add('ISC_USER=' + AUser);
    if APassword <> '' then
      P.Environment.Add('ISC_PASSWORD=' + APassword);

    try
      P.Execute;

      { As ferramentas escrevem no fluxo de erro: poStderrToOutPut traz
        tudo para a mesma leitura, que e drenada enquanto o processo roda
        para nao travar com um volume grande de mensagens. }
      Buffer := '';
      while P.Running do
      begin
        Line := ReadLineFrom(P.Output, Buffer);
        if Line <> '' then
        begin
          Result.Output.Add(Line);
          if Assigned(AOnLine) then
            AOnLine(Line);
        end;
      end;

      { O resto da saida, depois que o processo terminou. }
      Line := ReadLineFrom(P.Output, Buffer);
      while Line <> '' do
      begin
        Result.Output.Add(Line);
        if Assigned(AOnLine) then
          AOnLine(Line);
        Line := ReadLineFrom(P.Output, Buffer);
      end;

      Result.ExitCode := P.ExitCode;
    except
      on E: Exception do
      begin
        Result.Output.Add(Trim(E.Message));
        Result.ExitCode := -1;
      end;
    end;
  finally
    P.Free;
  end;
end;

end.
