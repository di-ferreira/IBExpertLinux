unit uAdmin;
{ Tarefas administrativas: backup, restore, validacao e estatisticas do
  Firebird, usando gbak, gfix e gstat. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, Dialogs,
  ibtypes, ibtools, ibsession;

type
  TAdminTask = (atBackup, atRestore, atValidate, atStats);

  TfrmAdmin = class(TForm)
  private
    FSession: TIBStudioSession;
    FTask: TAdminTask;
    FCmbTask: TComboBox;
    FEdtFile: TEdit;
    FLblFile: TLabel;
    FChkVerbose: TCheckBox;
    FChkIgnoreSum: TCheckBox;
    FChkMetadata: TCheckBox;
    FChkGarbage: TCheckBox;
    FChkIndexes: TCheckBox;
    FChkReplace: TCheckBox;
    FChkSpace: TCheckBox;
    FEdtPage: TEdit;
    FLog: TMemo;
    procedure BuildUi;
    procedure TaskChange(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
    procedure BtnRunClick(Sender: TObject);
    function Options: TToolOptions;
    function ToolName: string;
    function BuildArgs: TStringArray;
    procedure UpdateControls;
    procedure ToolLine(const ALine: string);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSession(ASession: TIBStudioSession);
    procedure SetTask(ATask: TAdminTask);
  end;

implementation

constructor TfrmAdmin.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FTask := atBackup;
  BuildUi;
  UpdateControls;
end;

procedure TfrmAdmin.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

procedure TfrmAdmin.SetTask(ATask: TAdminTask);
begin
  FTask := ATask;
  if Assigned(FCmbTask) then
  begin
    FCmbTask.ItemIndex := Ord(ATask);
    UpdateControls;
  end;
end;

procedure TfrmAdmin.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Tarefas administrativas';
  Width := 780;
  Height := 560;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Tarefa:';

  FCmbTask := TComboBox.Create(Self);
  FCmbTask.Parent := Self;
  FCmbTask.Left := 90;
  FCmbTask.Top := 14;
  FCmbTask.Width := 220;
  FCmbTask.Style := csDropDownList;
  FCmbTask.Items.Add('Backup');
  FCmbTask.Items.Add('Restaurar');
  FCmbTask.Items.Add('Validacao do banco');
  FCmbTask.Items.Add('Estatisticas do banco');
  FCmbTask.ItemIndex := 0;
  FCmbTask.OnChange := @TaskChange;

  FLblFile := TLabel.Create(Self);
  FLblFile.Parent := Self;
  FLblFile.Left := 16;
  FLblFile.Top := 56;
  FLblFile.Caption := 'Arquivo:';

  FEdtFile := TEdit.Create(Self);
  FEdtFile.Parent := Self;
  FEdtFile.Left := 90;
  FEdtFile.Top := 52;
  FEdtFile.Width := 500;

  with TButton.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Selecionar...';
    Left := 600;
    Top := 51;
    Width := 100;
    Height := 26;
    OnClick := @BtnBrowseClick;
  end;

  FChkVerbose := TCheckBox.Create(Self);
  FChkVerbose.Parent := Self;
  FChkVerbose.Left := 16;
  FChkVerbose.Top := 92;
  FChkVerbose.Caption := 'Detalhado (-v)';

  FChkIgnoreSum := TCheckBox.Create(Self);
  FChkIgnoreSum.Parent := Self;
  FChkIgnoreSum.Left := 190;
  FChkIgnoreSum.Top := 92;
  FChkIgnoreSum.Caption := 'Ignorar checksum (-i)';

  FChkMetadata := TCheckBox.Create(Self);
  FChkMetadata.Parent := Self;
  FChkMetadata.Left := 400;
  FChkMetadata.Top := 92;
  FChkMetadata.Caption := 'Somente metadados (-m)';

  FChkGarbage := TCheckBox.Create(Self);
  FChkGarbage.Parent := Self;
  FChkGarbage.Left := 16;
  FChkGarbage.Top := 120;
  FChkGarbage.Caption := 'Coleta de lixo (-g)';

  FChkIndexes := TCheckBox.Create(Self);
  FChkIndexes.Parent := Self;
  FChkIndexes.Left := 190;
  FChkIndexes.Top := 120;
  FChkIndexes.Caption := 'Desativar indices (-t)';

  FChkReplace := TCheckBox.Create(Self);
  FChkReplace.Parent := Self;
  FChkReplace.Left := 400;
  FChkReplace.Top := 120;
  FChkReplace.Caption := 'Substituir existente (-r)';

  FChkSpace := TCheckBox.Create(Self);
  FChkSpace.Parent := Self;
  FChkSpace.Left := 16;
  FChkSpace.Top := 148;
  FChkSpace.Caption := 'Usar todo o espaco (-s)';

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 190;
  Lbl.Top := 152;
  Lbl.Caption := 'Tamanho de pagina:';

  FEdtPage := TEdit.Create(Self);
  FEdtPage.Parent := Self;
  FEdtPage.Left := 310;
  FEdtPage.Top := 148;
  FEdtPage.Width := 70;

  FLog := TMemo.Create(Self);
  FLog.Parent := Self;
  FLog.Left := 16;
  FLog.Top := 186;
  FLog.Width := 740;
  FLog.Height := 300;
  FLog.ReadOnly := True;
  FLog.ScrollBars := ssBoth;
  FLog.Font.Name := 'DejaVu Sans Mono';
  FLog.Font.Size := 9;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Executar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnRunClick;
    Default := True;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Fechar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrLeft;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrCancel;
    Cancel := True;
  end;
end;

procedure TfrmAdmin.UpdateControls;
var
  UsesFile: Boolean;
begin
  UsesFile := FTask in [atBackup, atRestore];
  FLblFile.Visible := UsesFile;
  FEdtFile.Visible := UsesFile;
  FChkMetadata.Visible := FTask = atBackup;
  FChkGarbage.Visible := FTask = atBackup;
  FChkReplace.Visible := FTask = atRestore;
  FChkIndexes.Visible := FTask in [atBackup, atRestore];
  FChkIgnoreSum.Visible := FTask in [atBackup, atRestore];
end;

procedure TfrmAdmin.TaskChange(Sender: TObject);
begin
  FTask := TAdminTask(FCmbTask.ItemIndex);
  UpdateControls;
end;

procedure TfrmAdmin.BtnBrowseClick(Sender: TObject);
var
  Dlg: TSaveDialog;
  Open: TOpenDialog;
begin
  if FTask = atRestore then
  begin
    Open := TOpenDialog.Create(Self);
    try
      Open.Filter := 'Backup do Firebird (*.fbk;*.bak)|*.fbk;*.bak|Todos (*.*)|*.*';
      if Open.Execute then
        FEdtFile.Text := Open.FileName;
    finally
      Open.Free;
    end;
  end
  else
  begin
    Dlg := TSaveDialog.Create(Self);
    try
      Dlg.Filter := 'Backup do Firebird (*.fbk)|*.fbk';
      Dlg.DefaultExt := 'fbk';
      if Dlg.Execute then
        FEdtFile.Text := Dlg.FileName;
    finally
      Dlg.Free;
    end;
  end;
end;

function TfrmAdmin.Options: TToolOptions;
begin
  Result.Verbose := FChkVerbose.Checked;
  Result.IgnoreChecksum := FChkIgnoreSum.Checked;
  Result.DeactivateIndexes := FChkIndexes.Checked;
  Result.UseAllSpace := FChkSpace.Checked;
  Result.MetadataOnly := FChkMetadata.Checked;
  Result.GarbageCollection := FChkGarbage.Checked;
  Result.ReplaceExisting := FChkReplace.Checked;
  Result.PageSize := StrToIntDef(Trim(FEdtPage.Text), 0);
end;

function TfrmAdmin.ToolName: string;
begin
  case FTask of
    atBackup, atRestore: Result := 'gbak';
    atValidate: Result := 'gfix';
    atStats: Result := 'gstat';
  else
    Result := '';
  end;
end;

function TfrmAdmin.BuildArgs: TStringArray;
var
  O: TToolOptions;
  Profile: TConnectionProfile;
begin
  O := Options;
  Profile := FSession.Profile;
  case FTask of
    atBackup: Result := BuildBackupArgs(Profile, FEdtFile.Text, O);
    atRestore: Result := BuildRestoreArgs(Profile, FEdtFile.Text, O);
    atValidate: Result := BuildValidateArgs(Profile, O);
    atStats: Result := BuildStatsArgs(Profile, O);
  else
    Result := nil;
  end;
end;

procedure TfrmAdmin.ToolLine(const ALine: string);
begin
  FLog.Lines.Add(ALine);
  Application.ProcessMessages;
end;

procedure TfrmAdmin.BtnRunClick(Sender: TObject);
var
  Exe: string;
  Args: TStringArray;
  Res: TToolResult;
  Profile: TConnectionProfile;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de executar.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  if (FTask in [atBackup, atRestore]) and (Trim(FEdtFile.Text) = '') then
  begin
    MessageDlg('Sem arquivo', 'Escolha o arquivo de backup.', mtInformation,
      [mbOK], 0);
    Exit;
  end;

  Exe := FindFirebirdTool(ToolName);
  if Exe = '' then
  begin
    FLog.Lines.Add('Ferramenta ' + ToolName +
      ' nao encontrada. Instale o Firebird ou ajuste o PATH.');
    MessageDlg('Ferramenta nao encontrada', 'O executavel ' + ToolName +
      ' nao foi encontrado no PATH.', mtWarning, [mbOK], 0);
    Exit;
  end;

  Args := BuildArgs;
  Profile := FSession.Profile;

  FLog.Clear;
  FLog.Lines.Add(Exe);
  FLog.Lines.Add('(senha enviada por variavel de ambiente)');

  Res := RunTool(Exe, Args, Profile.User, Profile.Password, @ToolLine);
  try
    if Res.ExitCode = 0 then
      FLog.Lines.Add('Concluido com sucesso.')
    else
      FLog.Lines.Add('Erro: codigo de saida ' + IntToStr(Res.ExitCode));
  finally
    Res.Free;
  end;
end;

end.
