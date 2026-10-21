unit uSessions;
{ Lista das sessoes ativas no servidor (mon$attachments). }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ibsession;

type
  TfrmSessions = class(TForm)
  private
    FSession: TIBStudioSession;
    FList: TListBox;
    procedure BuildUi;
    procedure BtnRefreshClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSession(ASession: TIBStudioSession);
    procedure Refresh;
  end;

implementation

constructor TfrmSessions.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmSessions.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
  Refresh;
end;

procedure TfrmSessions.BuildUi;
var
  Lbl: TLabel;
  B: TButton;
begin
  Caption := 'Sessoes ativas';
  Width := 720;
  Height := 420;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 16;
  Lbl.Caption := 'Sessoes conectadas no servidor:';

  FList := TListBox.Create(Self);
  FList.Parent := Self;
  FList.Left := 16;
  FList.Top := 40;
  FList.Width := 680;
  FList.Height := 300;
  FList.Font.Name := 'DejaVu Sans Mono';
  FList.Font.Size := 9;

  B := TButton.Create(Self);
  B.Parent := Self;
  B.Caption := 'Atualizar';
  B.Left := 16;
  B.Top := 350;
  B.Width := 100;
  B.Height := 26;
  B.OnClick := @BtnRefreshClick;

  B := TButton.Create(Self);
  B.Parent := Self;
  B.Caption := 'Fechar';
  B.Left := 124;
  B.Top := 350;
  B.Width := 100;
  B.Height := 26;
  B.ModalResult := mrCancel;
end;

procedure TfrmSessions.BtnRefreshClick(Sender: TObject);
begin
  Refresh;
end;

procedure TfrmSessions.Refresh;
var
  L: TStringList;
begin
  FList.Clear;
  if not Assigned(FSession) then
    Exit;
  L := FSession.ActiveSessions;
  try
    FList.Items.Assign(L);
  finally
    L.Free;
  end;
end;

end.
