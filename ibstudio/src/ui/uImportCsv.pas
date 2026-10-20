unit uImportCsv;
{ Importacao de um arquivo CSV para uma tabela do banco. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Grids,
  Dialogs, DB, ibtypes, ibsqlutil, ibcsv, ibsession, uCsvOptions;

type
  TfrmImportCsv = class(TForm)
  private
    FSession: TIBStudioSession;
    FOptions: TCsvOptions;
    FTable: TCsvTable;
    FEdtFile: TEdit;
    FPreview: TStringGrid;
    FGridMap: TStringGrid;
    FCmbTable: TComboBox;
    FStatus: TLabel;
    FProgress: TProgressBar;
    procedure BuildUi;
    procedure BtnBrowseClick(Sender: TObject);
    procedure BtnOptionsClick(Sender: TObject);
    procedure BtnImportClick(Sender: TObject);
    procedure CmbTableChange(Sender: TObject);
    procedure LoadFile;
    procedure UpdatePreview;
    procedure UpdateMapping;
    function TableFields: TFieldMetaArray;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Sessao usada para ler o catalogo e gravar as linhas (nao e owned). }
    procedure SetSession(ASession: TIBStudioSession);
    property Options: TCsvOptions read FOptions write FOptions;
  end;

implementation

const
  PREVIEW_ROWS = 10;

constructor TfrmImportCsv.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FTable := nil;
  DefaultCsvOptions(FOptions);
  BuildUi;
end;

destructor TfrmImportCsv.Destroy;
begin
  FTable.Free;
  inherited Destroy;
end;

procedure TfrmImportCsv.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Importar CSV';
  Width := 840;
  Height := 640;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Arquivo:';

  FEdtFile := TEdit.Create(Self);
  FEdtFile.Parent := Self;
  FEdtFile.Left := 90;
  FEdtFile.Top := 14;
  FEdtFile.Width := 480;

  with TButton.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Selecionar...';
    Left := 580;
    Top := 13;
    Width := 110;
    Height := 26;
    OnClick := @BtnBrowseClick;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Opcoes...';
    Left := 700;
    Top := 13;
    Width := 100;
    Height := 26;
    OnClick := @BtnOptionsClick;
  end;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 54;
  Lbl.Caption := 'Previa:';

  FPreview := TStringGrid.Create(Self);
  FPreview.Parent := Self;
  FPreview.Left := 16;
  FPreview.Top := 74;
  FPreview.Width := 800;
  FPreview.Height := 170;
  FPreview.Options := FPreview.Options - [goEditing];
  FPreview.FixedRows := 1;
  FPreview.FixedCols := 1;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 258;
  Lbl.Caption := 'Tabela de destino:';

  FCmbTable := TComboBox.Create(Self);
  FCmbTable.Parent := Self;
  FCmbTable.Left := 140;
  FCmbTable.Top := 254;
  FCmbTable.Width := 400;
  FCmbTable.Style := csDropDownList;
  FCmbTable.OnChange := @CmbTableChange;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 294;
  Lbl.Caption := 'Correspondencia (coluna do CSV > campo da tabela):';

  FGridMap := TStringGrid.Create(Self);
  FGridMap.Parent := Self;
  FGridMap.Left := 16;
  FGridMap.Top := 314;
  FGridMap.Width := 800;
  FGridMap.Height := 230;
  FGridMap.Options := FGridMap.Options + [goEditing];
  FGridMap.FixedRows := 1;
  FGridMap.FixedCols := 1;

  FProgress := TProgressBar.Create(Self);
  FProgress.Parent := Self;
  FProgress.Left := 16;
  FProgress.Top := 556;
  FProgress.Width := 800;
  FProgress.Height := 18;
  FProgress.Style := pbstNormal;

  FStatus := TLabel.Create(Self);
  FStatus.Parent := Self;
  FStatus.Left := 16;
  FStatus.Top := 580;
  FStatus.Caption := '';

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Importar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnImportClick;
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

procedure TfrmImportCsv.SetSession(ASession: TIBStudioSession);
var
  I: Integer;
  Names: TStrings;
begin
  FSession := ASession;
  if not Assigned(FSession) then
    Exit;
  Names := FSession.RelationNames;
  FCmbTable.Items.Clear;
  for I := 0 to Names.Count - 1 do
    FCmbTable.Items.Add(Names[I]);
  if FCmbTable.Items.Count > 0 then
    FCmbTable.ItemIndex := 0;
end;

procedure TfrmImportCsv.BtnBrowseClick(Sender: TObject);
var
  Dlg: TOpenDialog;
begin
  Dlg := TOpenDialog.Create(Self);
  try
    Dlg.Filter := 'Arquivos CSV (*.csv;*.txt)|*.csv;*.txt|Todos (*.*)|*.*';
    Dlg.Options := Dlg.Options + [ofOverwritePrompt];
    if Dlg.Execute then
    begin
      FEdtFile.Text := Dlg.FileName;
      LoadFile;
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmImportCsv.BtnOptionsClick(Sender: TObject);
var
  O: TCsvOptions;
begin
  O := FOptions;
  if CsvOptionsDialog(FOptions, O) then
  begin
    FOptions := O;
    if FEdtFile.Text <> '' then
      LoadFile;
  end;
end;

procedure TfrmImportCsv.LoadFile;
var
  F: TFileStream;
begin
  FreeAndNil(FTable);
  if (FEdtFile.Text = '') or not FileExists(FEdtFile.Text) then
  begin
    UpdatePreview;
    UpdateMapping;
    Exit;
  end;

  F := TFileStream.Create(FEdtFile.Text, fmOpenRead or fmShareDenyNone);
  try
    FTable := ReadCsv(F, FOptions);
  finally
    F.Free;
  end;

  UpdatePreview;
  UpdateMapping;
  FStatus.Caption := Format('%d linha(s), %d coluna(s).',
    [FTable.RowCount, FTable.ColumnCount]);
end;

procedure TfrmImportCsv.UpdatePreview;
var
  I, C, R: Integer;
  N: Integer;
begin
  FPreview.ColCount := 1;
  FPreview.RowCount := 1;
  if not Assigned(FTable) then
    Exit;

  FPreview.ColCount := FTable.ColumnCount;
  N := FTable.RowCount;
  if N > PREVIEW_ROWS then
    N := PREVIEW_ROWS;
  FPreview.RowCount := N + 1;

  for C := 0 to FTable.ColumnCount - 1 do
  begin
    FPreview.Cells[0, C] := FTable.ColumnName(C);
    FPreview.ColWidths[C] := 120;
  end;

  for R := 0 to N - 1 do
    for C := 0 to FTable.ColumnCount - 1 do
      FPreview.Cells[C + 1, R + 1] := FTable.Cell(R, C);
end;

function TfrmImportCsv.TableFields: TFieldMetaArray;
begin
  Result := nil;
  if not Assigned(FSession) or (FCmbTable.Text = '') then
    Exit;
  Result := FSession.RelationFieldMetas(FCmbTable.Text);
end;

procedure TfrmImportCsv.UpdateMapping;
var
  I, J: Integer;
  Metas: TFieldMetaArray;
  Found: string;
begin
  FGridMap.ColCount := 2;
  FGridMap.RowCount := 1;
  FGridMap.Cells[0, 0] := 'Coluna do CSV';
  FGridMap.Cells[1, 0] := 'Campo da tabela';
  FGridMap.ColWidths[0] := 300;
  FGridMap.ColWidths[1] := 300;

  if not Assigned(FTable) then
    Exit;

  FGridMap.RowCount := FTable.ColumnCount + 1;
  Metas := TableFields;
  for I := 0 to FTable.ColumnCount - 1 do
  begin
    FGridMap.Cells[0, I + 1] := FTable.ColumnName(I);
    { Correspondencia automatica pelo nome. }
    Found := '';
    for J := 0 to High(Metas) do
      if SameText(Metas[J].Name, FTable.ColumnName(I)) then
      begin
        Found := Metas[J].Name;
        Break;
      end;
    FGridMap.Cells[1, I + 1] := Found;
  end;
end;

procedure TfrmImportCsv.CmbTableChange(Sender: TObject);
begin
  UpdateMapping;
end;

procedure TfrmImportCsv.BtnImportClick(Sender: TObject);
var
  C, R, N, Index: Integer;
  Mapped: array of string;
  Cols, Vals, SQL, Value, PName: string;
  Params: TParams;
  Metas: TFieldMetaArray;
  Batch: Integer;
  IsNull: Boolean;
  Insereu: Integer;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de importar.',
      mtInformation, [mbOK], 0);
    Exit;
  end;
  if not Assigned(FTable) then
  begin
    MessageDlg('Sem arquivo', 'Selecione um arquivo CSV.', mtInformation,
      [mbOK], 0);
    Exit;
  end;
  if FCmbTable.Text = '' then
  begin
    MessageDlg('Sem tabela', 'Escolha a tabela de destino.', mtInformation,
      [mbOK], 0);
    Exit;
  end;

  SetLength(Mapped, FTable.ColumnCount);
  for C := 0 to FTable.ColumnCount - 1 do
    Mapped[C] := Trim(FGridMap.Cells[1, C + 1]);

  Cols := '';
  Vals := '';
  N := 0;
  for C := 0 to FTable.ColumnCount - 1 do
    if Mapped[C] <> '' then
    begin
      if N > 0 then
      begin
        Cols := Cols + ', ';
        Vals := Vals + ', ';
      end;
      Cols := Cols + QuoteIdentifier(Mapped[C]);
      Vals := Vals + ':P' + IntToStr(N);
      Inc(N);
    end;

  if N = 0 then
  begin
    MessageDlg('Sem correspondencia', 'Informe o campo da tabela para pelo ' +
      'menos uma coluna do CSV.', mtInformation, [mbOK], 0);
    Exit;
  end;

  SQL := 'insert into ' + QuoteIdentifier(FCmbTable.Text) + ' (' + Cols +
    ') values (' + Vals + ')';
  Metas := TableFields;

  FProgress.Max := FTable.RowCount;
  FProgress.Position := 0;
  Insereu := 0;
  Batch := 0;

  try
    for R := 0 to FTable.RowCount - 1 do
    begin
      Params := TParams.Create(nil);
      try
        Index := 0;
        for C := 0 to FTable.ColumnCount - 1 do
          if Mapped[C] <> '' then
          begin
            PName := 'P' + IntToStr(Index);
            Value := FTable.Cell(R, C);
            IsNull := (FOptions.NullToken <> '') and
              (Value = FOptions.NullToken);
            Params.CreateParam(ftString, PName, ptInput);
            if IsNull then
              Params.ParamByName(PName).Clear
            else
              Params.ParamByName(PName).AsString := Value;
            Inc(Index);
          end;
        FSession.Execute(SQL, Params, False);
      finally
        Params.Free;
      end;
      Inc(Insereu);
      Inc(Batch);
      if Batch >= 500 then
      begin
        FSession.Commit;
        Batch := 0;
      end;
      FProgress.Position := R + 1;
      FStatus.Caption := Format('Inserindo %d de %d...', [R + 1, FTable.RowCount]);
      Application.ProcessMessages;
    end;
    FSession.Commit;
  except
    on E: Exception do
    begin
      FSession.Rollback;
      FStatus.Caption := 'Importacao cancelada.';
      MessageDlg('Erro na importacao', Format('Linha %d: %s', [Insereu + 1,
        DescribeException(E)]), mtError, [mbOK], 0);
      Exit;
    end;
  end;

  FStatus.Caption := Format('%d linha(s) importada(s).', [Insereu]);
  ModalResult := mrOk;
end;

end.
