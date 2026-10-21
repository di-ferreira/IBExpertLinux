unit uCompare;
{ Comparacao de dois esquemas e geracao do script de sincronizacao. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Grids,
  Dialogs, ibtypes, ibschema, ibcompare, ibsession, uConnect;

type
  TfrmCompare = class(TForm)
  private
    FSession: TIBStudioSession;
    FSecond: TIBStudioSession;
    FProfileB: TConnectionProfile;
    FDiff: TDiffList;
    FGrid: TStringGrid;
    FPreview: TMemo;
    FCmbDirection: TComboBox;
    FStatus: TLabel;
    procedure BuildUi;
    procedure BtnConnectClick(Sender: TObject);
    procedure BtnCompareClick(Sender: TObject);
    procedure DirectionChange(Sender: TObject);
    procedure UpdatePreview;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetSession(ASession: TIBStudioSession);
    function DiffList: TDiffList;
  end;

implementation

constructor TfrmCompare.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FProfileB := TConnectionProfile.Create;
  BuildUi;
end;

destructor TfrmCompare.Destroy;
begin
  if Assigned(FSecond) then
  begin
    FSecond.Disconnect;
    FSecond.Free;
  end;
  FProfileB.Free;
  inherited Destroy;
end;

procedure TfrmCompare.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

procedure TfrmCompare.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Comparar esquemas';
  Width := 940;
  Height := 620;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Segundo banco:';

  with TButton.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Conexao...';
    Left := 130;
    Top := 14;
    Width := 100;
    Height := 26;
    OnClick := @BtnConnectClick;
  end;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 250;
  Lbl.Top := 18;
  Lbl.Caption := 'Direcao:';

  FCmbDirection := TComboBox.Create(Self);
  FCmbDirection.Parent := Self;
  FCmbDirection.Left := 310;
  FCmbDirection.Top := 14;
  FCmbDirection.Width := 230;
  FCmbDirection.Style := csDropDownList;
  FCmbDirection.Items.Add('Primeiro -> segundo');
  FCmbDirection.Items.Add('Segundo -> primeiro');
  FCmbDirection.ItemIndex := 0;
  FCmbDirection.OnChange := @DirectionChange;

  FGrid := TStringGrid.Create(Self);
  FGrid.Parent := Self;
  FGrid.Left := 16;
  FGrid.Top := 52;
  FGrid.Width := 900;
  FGrid.Height := 250;
  FGrid.ColCount := 3;
  FGrid.RowCount := 1;
  FGrid.Options := FGrid.Options - [goEditing];
  FGrid.FixedRows := 1;
  FGrid.FixedCols := 1;
  FGrid.Cells[0, 0] := 'Tipo';
  FGrid.Cells[1, 0] := 'Objeto';
  FGrid.Cells[2, 0] := 'Detalhe';
  FGrid.ColWidths[0] := 120;
  FGrid.ColWidths[1] := 320;
  FGrid.ColWidths[2] := 440;

  FPreview := TMemo.Create(Self);
  FPreview.Parent := Self;
  FPreview.Left := 16;
  FPreview.Top := 312;
  FPreview.Width := 900;
  FPreview.Height := 220;
  FPreview.ReadOnly := True;
  FPreview.ScrollBars := ssBoth;
  FPreview.Font.Name := 'DejaVu Sans Mono';
  FPreview.Font.Size := 9;

  FStatus := TLabel.Create(Self);
  FStatus.Parent := Self;
  FStatus.Left := 16;
  FStatus.Top := 538;
  FStatus.Caption := '';

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Comparar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnCompareClick;
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
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrCancel;
    Cancel := True;
  end;
end;

procedure TfrmCompare.BtnConnectClick(Sender: TObject);
var
  Dlg: TfrmConnect;
begin
  Dlg := TfrmConnect.Create(Self);
  try
    Dlg.SetInitialProfile(FProfileB);
    if Dlg.ShowModal = mrOk then
    begin
      FProfileB.Free;
      FProfileB := Dlg.Profile.Clone;
      FStatus.Caption := 'Segundo banco: ' + FProfileB.DisplayName;
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmCompare.BtnCompareClick(Sender: TObject);
var
  ModelA, ModelB: TSchemaModel;
  I: Integer;
  Kind: string;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de comparar.',
      mtInformation, [mbOK], 0);
    Exit;
  end;
  if FProfileB.Database = '' then
  begin
    MessageDlg('Sem segundo banco', 'Escolha a conexao do segundo banco.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  if not Assigned(FSecond) then
    FSecond := TIBStudioSession.Create;
  try
    FSecond.Connect(FProfileB);
  except
    on E: Exception do
    begin
      MessageDlg('Falha na conexao', DescribeException(E), mtError, [mbOK], 0);
      Exit;
    end;
  end;

  ModelA := FSession.LoadSchemaModel;
  ModelB := FSecond.LoadSchemaModel;
  FDiff := CompareSchemas(ModelA, ModelB);

  FGrid.RowCount := Length(FDiff) + 1;
  for I := 0 to High(FDiff) do
  begin
    case FDiff[I].Kind of
      dkOnlyInA: Kind := 'so no primeiro';
      dkOnlyInB: Kind := 'so no segundo';
      dkDifferent: Kind := 'diferente';
    end;
    FGrid.Cells[0, I + 1] := FDiff[I].ObjectType;
    FGrid.Cells[1, I + 1] := FDiff[I].Name;
    FGrid.Cells[2, I + 1] := FDiff[I].Detail;
  end;

  FStatus.Caption := Format('%d diferenca(s).', [Length(FDiff)]);
  UpdatePreview;
end;

procedure TfrmCompare.DirectionChange(Sender: TObject);
begin
  UpdatePreview;
end;

procedure TfrmCompare.UpdatePreview;
var
  Script: TStringArray;
  I: Integer;
  Conteudo: string;
begin
  if Length(FDiff) = 0 then
  begin
    FPreview.Clear;
    Exit;
  end;
  Script := BuildSyncScript(FDiff, FCmbDirection.ItemIndex = 0);
  Conteudo := '';
  for I := 0 to High(Script) do
    Conteudo := Conteudo + Script[I] + LineEnding;
  FPreview.Lines.Text := Conteudo;
end;

function TfrmCompare.DiffList: TDiffList;
begin
  Result := FDiff;
end;

end.
