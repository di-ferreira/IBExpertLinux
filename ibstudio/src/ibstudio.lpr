program ibstudio;
{ IBStudio — cliente Firebird em Free Pascal/Lazarus. }

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Interfaces, Forms, uMain;

{ Sem arquivo .res: a interface e criada em codigo, sem formularios .lfm.
  Para embutir icone/versao no Windows, adicione um .rc e a diretiva R correspondente. }

begin
  Application.Initialize;
  Application.Title := 'IBStudio';
  Application.Scaled := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
