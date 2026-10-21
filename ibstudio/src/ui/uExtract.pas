unit uExtract;
{ Extracao do script de criacao do banco a partir do catalogo. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, Dialogs,
  ibtypes, ibschema, ibextract, ibsession;

type
  TfrmExtract = class(TForm)
  private
    FSession: TIBStudioSession;
    FModel: TSchemaModel;
    FObjects: TExtractObjectArray;
    FScript: TStringArray;
    FChkDescriptions: TCheckBox;
    FChkGenerators: TCheckBox;
    FChkGrants: TCheckBox;
    FChkIndexes: TCheckBox;
    FChkForeignKeys: TCheckBox;
    FChkViews: TCheckBox;
    FChkProcedures: TCheckBox;
    FChkTriggers: TCheckBox;
    FChkOneFile: TCheckBox;
    FPreview: TMemo;
    FStatus: TLabel;
    procedure BuildUi;
    procedure BtnGenerateClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    function Options: TExtractOptions;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSession(ASession: TIBStudioSession);
    function Script: TStringArray;
    { Gera o script a partir do catalogo (mesmo caminho do botao). }
    procedure Generate;
    { Texto da previa (usado nos testes). }
    function ScriptText: string;
  end;

implementation

constructor TfrmExtract.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmExtract.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

procedure TfrmExtract.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Extrair metadados';
  Width := 900;
  Height := 620;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 14;
  Lbl.Caption := 'Incluir:';

  FChkDescriptions := TCheckBox.Create(Self);
  FChkDescriptions.Parent := Self;
  FChkDescriptions.Left := 90;
  FChkDescriptions.Top := 12;
  FChkDescriptions.Caption := 'Descricoes';

  FChkGenerators := TCheckBox.Create(Self);
  FChkGenerators.Parent := Self;
  FChkGenerators.Left := 220;
  FChkGenerators.Top := 12;
  FChkGenerators.Caption := 'Geradores';

  FChkGrants := TCheckBox.Create(Self);
  FChkGrants.Parent := Self;
  FChkGrants.Left := 360;
  FChkGrants.Top := 12;
  FChkGrants.Caption := 'Grants';

  FChkIndexes := TCheckBox.Create(Self);
  FChkIndexes.Parent := Self;
  FChkIndexes.Left := 470;
  FChkIndexes.Top := 12;
  FChkIndexes.Caption := 'Indices';

  FChkForeignKeys := TCheckBox.Create(Self);
  FChkForeignKeys.Parent := Self;
  FChkForeignKeys.Left := 570;
  FChkForeignKeys.Top := 12;
  FChkForeignKeys.Caption := 'Chaves estrangeiras';

  FChkViews := TCheckBox.Create(Self);
  FChkViews.Parent := Self;
  FChkViews.Left := 90;
  FChkViews.Top := 40;
  FChkViews.Caption := 'Views';

  FChkProcedures := TCheckBox.Create(Self);
  FChkProcedures.Parent := Self;
  FChkProcedures.Left := 190;
  FChkProcedures.Top := 40;
  FChkProcedures.Caption := 'Procedures';

  FChkTriggers := TCheckBox.Create(Self);
  FChkTriggers.Parent := Self;
  FChkTriggers.Left := 320;
  FChkTriggers.Top := 40;
  FChkTriggers.Caption := 'Triggers';

  FChkOneFile := TCheckBox.Create(Self);
  FChkOneFile.Parent := Self;
  FChkOneFile.Left := 450;
  FChkOneFile.Top := 40;
  FChkOneFile.Caption := 'Um arquivo por objeto';

  FStatus := TLabel.Create(Self);
  FStatus.Parent := Self;
  FStatus.Left := 16;
  FStatus.Top := 548;
  FStatus.Caption := '';

  FPreview := TMemo.Create(Self);
  FPreview.Parent := Self;
  FPreview.Left := 16;
  FPreview.Top := 72;
  FPreview.Width := 860;
  FPreview.Height := 470;
  FPreview.ReadOnly := True;
  FPreview.ScrollBars := ssBoth;
  FPreview.Font.Name := 'DejaVu Sans Mono';
  FPreview.Font.Size := 9;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Gerar script';
    Width := 110;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnGenerateClick;
    Default := True;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Salvar...';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrLeft;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnSaveClick;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Fechar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrCancel;
    Cancel := True;
  end;
end;

function TfrmExtract.Options: TExtractOptions;
begin
  DefaultExtractOptions(Result);
  Result.IncludeDescriptions := FChkDescriptions.Checked;
  Result.IncludeGenerators := FChkGenerators.Checked;
  Result.IncludeGrants := FChkGrants.Checked;
  Result.IncludeIndexes := FChkIndexes.Checked;
  Result.IncludeForeignKeys := FChkForeignKeys.Checked;
  Result.IncludeViews := FChkViews.Checked;
  Result.IncludeProcedures := FChkProcedures.Checked;
  Result.IncludeTriggers := FChkTriggers.Checked;
end;

procedure TfrmExtract.BtnGenerateClick(Sender: TObject);
var
  I: Integer;
  Conteudo: string;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de extrair.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  FModel := FSession.LoadSchemaModel;
  FObjects := ExtractObjects(FModel, Options);
  FScript := ExtractScript(FModel, Options);

  Conteudo := '';
  for I := 0 to High(FScript) do
    Conteudo := Conteudo + FScript[I] + LineEnding;
  FPreview.Lines.Text := Conteudo;
  FStatus.Caption := Format('%d comando(s), %d objeto(s).',
    [Length(FScript), Length(FObjects)]);
end;

procedure TfrmExtract.BtnSaveClick(Sender: TObject);
var
  Dlg: TSaveDialog;
  DirDlg: TSelectDirectoryDialog;
  L: TStringList;
  I: Integer;
begin
  if Length(FScript) = 0 then
  begin
    MessageDlg('Nada para salvar', 'Gere o script antes de salvar.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  if FChkOneFile.Checked then
  begin
    DirDlg := TSelectDirectoryDialog.Create(Self);
    try
      DirDlg.Title := 'Pasta para os arquivos do script';
      if DirDlg.Execute then
        SaveExtractFiles(FObjects, DirDlg.FileName, True);
    finally
      DirDlg.Free;
    end;
    Exit;
  end;

  Dlg := TSaveDialog.Create(Self);
  try
    Dlg.Filter := 'Script SQL (*.sql)|*.sql|Todos (*.*)|*.*';
    Dlg.DefaultExt := 'sql';
    if Dlg.Execute then
    begin
      L := TStringList.Create;
      try
        for I := 0 to High(FScript) do
          L.Add(FScript[I]);
        L.SaveToFile(Dlg.FileName);
      finally
        L.Free;
      end;
    end;
  finally
    Dlg.Free;
  end;
end;

function TfrmExtract.Script: TStringArray;
begin
  Result := FScript;
end;

procedure TfrmExtract.Generate;
begin
  BtnGenerateClick(Self);
end;

function TfrmExtract.ScriptText: string;
begin
  Result := FPreview.Text;
end;

end.
