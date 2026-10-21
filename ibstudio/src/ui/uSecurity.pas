unit uSecurity;
{ Usuarios, papeis e concessao de privilegios. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Dialogs,
  ibtypes, ibsecurity, ibsession;

type
  TfrmSecurity = class(TForm)
  private
    FSession: TIBStudioSession;
    FTabs: TPageControl;
    FListUsers: TListBox;
    FListRoles: TListBox;
    FListGrants: TListBox;
    FCmbObject: TComboBox;
    FCmbGrantee: TComboBox;
    FEdtUser: TEdit;
    FEdtPassword: TEdit;
    FEdtRole: TEdit;
    FChkSelect: TCheckBox;
    FChkInsert: TCheckBox;
    FChkUpdate: TCheckBox;
    FChkDelete: TCheckBox;
    FChkExecute: TCheckBox;
    procedure BuildUi;
    procedure RefreshUsers;
    procedure RefreshRoles;
    procedure RefreshGrants;
    procedure BtnRefreshUsersClick(Sender: TObject);
    procedure BtnCreateUserClick(Sender: TObject);
    procedure BtnAlterUserClick(Sender: TObject);
    procedure BtnDropUserClick(Sender: TObject);
    procedure BtnRefreshRolesClick(Sender: TObject);
    procedure BtnCreateRoleClick(Sender: TObject);
    procedure BtnDropRoleClick(Sender: TObject);
    procedure BtnRefreshGrantsClick(Sender: TObject);
    procedure BtnGrantClick(Sender: TObject);
    procedure BtnRevokeClick(Sender: TObject);
    procedure ObjectChange(Sender: TObject);
    function Privileges: string;
    procedure RunSQL(const ASQL: string);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSession(ASession: TIBStudioSession);
  end;

implementation

function AddSep(const AValue: string): string;
begin
  if AValue = '' then
    Exit('');
  Result := ', ';
end;

constructor TfrmSecurity.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmSecurity.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
  RefreshUsers;
  RefreshRoles;
end;

procedure TfrmSecurity.BuildUi;
var
  Sheet: TTabSheet;
  Lbl: TLabel;

  procedure AddButton(AParent: TWinControl; const ACaption: string;
    ALeft, ATop, AWidth: Integer; AOnClick: TNotifyEvent);
  var
    B: TButton;
  begin
    B := TButton.Create(Self);
    B.Parent := AParent;
    B.Caption := ACaption;
    B.Left := ALeft;
    B.Top := ATop;
    B.Width := AWidth;
    B.Height := 26;
    B.OnClick := AOnClick;
  end;

begin
  Caption := 'Usuarios e permissoes';
  Width := 820;
  Height := 560;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  FTabs := TPageControl.Create(Self);
  FTabs.Parent := Self;
  FTabs.Align := alClient;
  FTabs.Height := 460;

  { Usuarios. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Usuarios';

  FListUsers := TListBox.Create(Self);
  FListUsers.Parent := Sheet;
  FListUsers.Align := alClient;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Sheet;
  Lbl.Left := 16;
  Lbl.Top := 380;
  Lbl.Caption := 'Nome:';

  FEdtUser := TEdit.Create(Self);
  FEdtUser.Parent := Sheet;
  FEdtUser.Left := 80;
  FEdtUser.Top := 376;
  FEdtUser.Width := 200;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Sheet;
  Lbl.Left := 300;
  Lbl.Top := 380;
  Lbl.Caption := 'Senha:';

  FEdtPassword := TEdit.Create(Self);
  FEdtPassword.Parent := Sheet;
  FEdtPassword.Left := 360;
  FEdtPassword.Top := 376;
  FEdtPassword.Width := 140;
  FEdtPassword.PasswordChar := '*';

  AddButton(Sheet, 'Criar', 520, 374, 100, @BtnCreateUserClick);
  AddButton(Sheet, 'Alterar senha', 628, 374, 120, @BtnAlterUserClick);
  AddButton(Sheet, 'Excluir', 520, 406, 100, @BtnDropUserClick);
  AddButton(Sheet, 'Atualizar', 628, 406, 120, @BtnRefreshUsersClick);

  { Papeis. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Papeis';

  FListRoles := TListBox.Create(Self);
  FListRoles.Parent := Sheet;
  FListRoles.Align := alClient;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Sheet;
  Lbl.Left := 16;
  Lbl.Top := 380;
  Lbl.Caption := 'Nome:';

  FEdtRole := TEdit.Create(Self);
  FEdtRole.Parent := Sheet;
  FEdtRole.Left := 80;
  FEdtRole.Top := 376;
  FEdtRole.Width := 200;

  AddButton(Sheet, 'Criar', 520, 374, 100, @BtnCreateRoleClick);
  AddButton(Sheet, 'Excluir', 628, 374, 100, @BtnDropRoleClick);
  AddButton(Sheet, 'Atualizar', 520, 406, 100, @BtnRefreshRolesClick);

  { Privilegios. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Privilegios';

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Sheet;
  Lbl.Left := 16;
  Lbl.Top := 16;
  Lbl.Caption := 'Objeto:';

  FCmbObject := TComboBox.Create(Self);
  FCmbObject.Parent := Sheet;
  FCmbObject.Left := 90;
  FCmbObject.Top := 12;
  FCmbObject.Width := 240;
  FCmbObject.Style := csDropDownList;
  FCmbObject.OnChange := @ObjectChange;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Sheet;
  Lbl.Left := 350;
  Lbl.Top := 16;
  Lbl.Caption := 'Usuario ou papel:';

  FCmbGrantee := TComboBox.Create(Self);
  FCmbGrantee.Parent := Sheet;
  FCmbGrantee.Left := 470;
  FCmbGrantee.Top := 12;
  FCmbGrantee.Width := 240;
  FCmbGrantee.Style := csDropDownList;

  FChkSelect := TCheckBox.Create(Self);
  FChkSelect.Parent := Sheet;
  FChkSelect.Left := 16;
  FChkSelect.Top := 48;
  FChkSelect.Caption := 'SELECT';

  FChkInsert := TCheckBox.Create(Self);
  FChkInsert.Parent := Sheet;
  FChkInsert.Left := 110;
  FChkInsert.Top := 48;
  FChkInsert.Caption := 'INSERT';

  FChkUpdate := TCheckBox.Create(Self);
  FChkUpdate.Parent := Sheet;
  FChkUpdate.Left := 210;
  FChkUpdate.Top := 48;
  FChkUpdate.Caption := 'UPDATE';

  FChkDelete := TCheckBox.Create(Self);
  FChkDelete.Parent := Sheet;
  FChkDelete.Left := 310;
  FChkDelete.Top := 48;
  FChkDelete.Caption := 'DELETE';

  FChkExecute := TCheckBox.Create(Self);
  FChkExecute.Parent := Sheet;
  FChkExecute.Left := 410;
  FChkExecute.Top := 48;
  FChkExecute.Caption := 'EXECUTE';

  AddButton(Sheet, 'Conceder', 16, 80, 100, @BtnGrantClick);
  AddButton(Sheet, 'Revogar', 124, 80, 100, @BtnRevokeClick);
  AddButton(Sheet, 'Atualizar', 232, 80, 100, @BtnRefreshGrantsClick);

  FListGrants := TListBox.Create(Self);
  FListGrants.Parent := Sheet;
  FListGrants.Align := alBottom;
  FListGrants.Height := 240;
end;

procedure TfrmSecurity.RefreshUsers;
var
  L: TStringList;
  I: Integer;
begin
  if not Assigned(FSession) then
    Exit;
  L := FSession.ListUsers;
  try
    FListUsers.Items.Assign(L);
  finally
    L.Free;
  end;
end;

procedure TfrmSecurity.RefreshRoles;
var
  L: TStringList;
begin
  if not Assigned(FSession) then
    Exit;
  L := FSession.ListRoles;
  try
    FListRoles.Items.Assign(L);
  finally
    L.Free;
  end;
end;

procedure TfrmSecurity.RefreshGrants;
var
  L: TStringList;
  I: Integer;
  Names: TStringList;
begin
  FListGrants.Clear;
  if not Assigned(FSession) then
    Exit;
  if FCmbObject.Text = '' then
    Exit;
  L := FSession.ListObjectPrivileges(FCmbObject.Text);
  try
    for I := 0 to L.Count - 1 do
      FListGrants.Items.Add(L[I]);
  finally
    L.Free;
  end;
end;

procedure TfrmSecurity.ObjectChange(Sender: TObject);
begin
  RefreshGrants;
end;

procedure TfrmSecurity.BtnRefreshUsersClick(Sender: TObject);
begin
  RefreshUsers;
end;

procedure TfrmSecurity.BtnRefreshRolesClick(Sender: TObject);
begin
  RefreshRoles;
end;

procedure TfrmSecurity.BtnRefreshGrantsClick(Sender: TObject);
begin
  RefreshGrants;
end;

function TfrmSecurity.Privileges: string;
var
  S: string;
begin
  S := '';
  if FChkSelect.Checked then
    S := S + 'SELECT';
  if FChkInsert.Checked then
    S := S + AddSep(S) + 'INSERT';
  if FChkUpdate.Checked then
    S := S + AddSep(S) + 'UPDATE';
  if FChkDelete.Checked then
    S := S + AddSep(S) + 'DELETE';
  if FChkExecute.Checked then
    S := S + AddSep(S) + 'EXECUTE';
  Result := S;
end;

procedure TfrmSecurity.RunSQL(const ASQL: string);
var
  Err: string;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes.', mtInformation,
      [mbOK], 0);
    Exit;
  end;
  if not FSession.ExecuteStatement(ASQL, Err) then
  begin
    MessageDlg('Erro', Err, mtError, [mbOK], 0);
    Exit;
  end;
  RefreshGrants;
end;

procedure TfrmSecurity.BtnCreateUserClick(Sender: TObject);
begin
  if Trim(FEdtUser.Text) = '' then
    Exit;
  RunSQL(BuildCreateUserSQL(Trim(FEdtUser.Text), FEdtPassword.Text));
  FEdtPassword.Text := '';
  RefreshUsers;
end;

procedure TfrmSecurity.BtnAlterUserClick(Sender: TObject);
begin
  if Trim(FEdtUser.Text) = '' then
    Exit;
  RunSQL(BuildAlterUserSQL(Trim(FEdtUser.Text), FEdtPassword.Text));
  FEdtPassword.Text := '';
end;

procedure TfrmSecurity.BtnDropUserClick(Sender: TObject);
begin
  if Trim(FEdtUser.Text) = '' then
    Exit;
  if MessageDlg('Excluir usuario', 'Excluir o usuario ' + FEdtUser.Text + '?',
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  RunSQL(BuildDropUserSQL(Trim(FEdtUser.Text)));
  FEdtUser.Text := '';
  RefreshUsers;
end;

procedure TfrmSecurity.BtnCreateRoleClick(Sender: TObject);
begin
  if Trim(FEdtRole.Text) = '' then
    Exit;
  RunSQL(BuildCreateRoleSQL(Trim(FEdtRole.Text)));
  FEdtRole.Text := '';
  RefreshRoles;
end;

procedure TfrmSecurity.BtnDropRoleClick(Sender: TObject);
begin
  if Trim(FEdtRole.Text) = '' then
    Exit;
  if MessageDlg('Excluir papel', 'Excluir o papel ' + FEdtRole.Text + '?',
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  RunSQL(BuildDropRoleSQL(Trim(FEdtRole.Text)));
  FEdtRole.Text := '';
  RefreshRoles;
end;

procedure TfrmSecurity.BtnGrantClick(Sender: TObject);
begin
  if (FCmbObject.Text = '') or (FCmbGrantee.Text = '') then
    Exit;
  if Privileges = '' then
  begin
    MessageDlg('Sem privilegio', 'Escolha ao menos um privilegio.',
      mtInformation, [mbOK], 0);
    Exit;
  end;
  RunSQL(BuildGrantSQL('table', FCmbObject.Text, Privileges, FCmbGrantee.Text,
    nil, False));
end;

procedure TfrmSecurity.BtnRevokeClick(Sender: TObject);
begin
  if (FCmbObject.Text = '') or (FCmbGrantee.Text = '') then
    Exit;
  if Privileges = '' then
    Exit;
  RunSQL(BuildRevokeSQL('table', FCmbObject.Text, Privileges, FCmbGrantee.Text,
    nil));
end;

end.
