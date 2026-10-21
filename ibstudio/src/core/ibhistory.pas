unit ibhistory;
{ Historico de comandos executados, separado por banco. O arquivo e um
  texto simples (uma linha por comando, com o banco como prefixo). }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

type
  TCommandHistory = class
  private
    FFileName: string;
    FItems: TStringList;
    FMax: Integer;
    function KeyOf(const ADatabase, ACommand: string): string;
  public
    constructor Create(const AFileName: string; AMax: Integer = 100);
    destructor Destroy; override;
    { Carrega o arquivo (ignora o que nao der para ler). }
    procedure Load;
    procedure Save;
    { Acrescenta um comando (o mais recente primeiro). }
    procedure Add(const ADatabase, ACommand: string);
    { Comandos de um banco, do mais recente para o mais antigo. }
    function Items(const ADatabase: string): TStringList;
  end;

implementation

const
  Separator = #1;

constructor TCommandHistory.Create(const AFileName: string; AMax: Integer);
begin
  inherited Create;
  FFileName := AFileName;
  FMax := AMax;
  FItems := TStringList.Create;
  Load;
end;

destructor TCommandHistory.Destroy;
begin
  FItems.Free;
  inherited Destroy;
end;

function TCommandHistory.KeyOf(const ADatabase, ACommand: string): string;
begin
  Result := ADatabase + Separator + ACommand;
end;

procedure TCommandHistory.Load;
var
  L: TStringList;
  I, P: Integer;
begin
  FItems.Clear;
  if (FFileName = '') or not FileExists(FFileName) then
    Exit;
  L := TStringList.Create;
  try
    L.LoadFromFile(FFileName);
    for I := 0 to L.Count - 1 do
      if Trim(L[I]) <> '' then
        FItems.Add(L[I]);
  finally
    L.Free;
  end;
end;

procedure TCommandHistory.Save;
var
  Dir: string;
begin
  if FFileName = '' then
    Exit;
  Dir := ExtractFileDir(FFileName);
  if Dir <> '' then
    ForceDirectories(Dir);
  FItems.SaveToFile(FFileName);
end;

procedure TCommandHistory.Add(const ADatabase, ACommand: string);
var
  Key: string;
  I, Count: Integer;
  Command: string;
begin
  Command := Trim(ACommand);
  if Command = '' then
    Exit;
  Key := KeyOf(ADatabase, Command);

  { Remove a repeticao e coloca no inicio. }
  I := FItems.IndexOf(Key);
  if I >= 0 then
    FItems.Delete(I);
  FItems.Insert(0, Key);

  { Limita o tamanho do historico do banco. }
  Count := 0;
  I := 0;
  while I < FItems.Count do
  begin
    if Copy(FItems[I], 1, Pos(Separator, FItems[I]) - 1) = ADatabase then
    begin
      Inc(Count);
      if Count > FMax then
        FItems.Delete(I)
      else
        Inc(I);
    end
    else
      Inc(I);
  end;
  Save;
end;

function TCommandHistory.Items(const ADatabase: string): TStringList;
var
  I, P: Integer;
  S: string;
begin
  Result := TStringList.Create;
  for I := 0 to FItems.Count - 1 do
  begin
    P := Pos(Separator, FItems[I]);
    if P = 0 then
      Continue;
    if Copy(FItems[I], 1, P - 1) <> ADatabase then
      Continue;
    S := Copy(FItems[I], P + 1, MaxInt);
    Result.Add(S);
  end;
end;

end.
