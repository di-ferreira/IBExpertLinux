unit uTableEditor;
{ Editor de estrutura de tabela: campos, chave primaria, indices e chaves
  estrangeiras, com geracao do script DDL. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Grids,
  Dialogs, ibtypes, ibsqlutil, ibddl, ibsession, uSqlPreview;

type
  TfrmTableEditor = class(TForm)
  private
    FSession: TIBStudioSession;
    FModel: TTableModel;
    FOldModel: TTableModel;
    FIsNew: Boolean;
    FEdtName: TEdit;
    FTabs: TPageControl;
    FGridFields: TStringGrid;
    FGridIndexes: TStringGrid;
    FGridFks: TStringGrid;
    procedure BuildUi;
    procedure BtnAddFieldClick(Sender: TObject);
    procedure BtnRemoveFieldClick(Sender: TObject);
    procedure BtnUpFieldClick(Sender: TObject);
    procedure BtnDownFieldClick(Sender: TObject);
    procedure BtnAddIndexClick(Sender: TObject);
    procedure BtnRemoveIndexClick(Sender: TObject);
    procedure BtnAddFkClick(Sender: TObject);
    procedure BtnRemoveFkClick(Sender: TObject);
    procedure BtnPreviewClick(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure GridsChanged(Sender: TObject);
    function ModelFromGrids: TTableModel;
    function BuildScript: string;
    function Validate(var AError: string): Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    { Sessao usada para ler o catalogo e executar o script (nao e owned). }
    procedure SetSession(ASession: TIBStudioSession);
    { Carrega a estrutura a editar; AIsNew = True para uma tabela nova. }
    procedure SetModel(const AModel: TTableModel; AIsNew: Boolean);
    function GetModel: TTableModel;
    { Script que sera executado com o estado atual dos formularios. }
    function ScriptText: string;
    property Model: TTableModel read GetModel;
  end;

implementation

const
  FIELD_COLS = 8;
  INDEX_COLS = 3;
  FK_COLS = 6;

  { Tipos aceitos no editor. }
  KNOWN_TYPES: array[0..13] of string = ('INTEGER', 'SMALLINT', 'BIGINT',
    'VARCHAR', 'CHAR', 'NUMERIC', 'DECIMAL', 'FLOAT', 'DOUBLE PRECISION',
    'DATE', 'TIME', 'TIMESTAMP', 'BOOLEAN', 'BLOB');

function JoinStrings(const AValues: TStringArray; const ASep: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to High(AValues) do
  begin
    if I > 0 then
      Result := Result + ASep;
    Result := Result + AValues[I];
  end;
end;

function SplitStrings(const AValue: string): TStringArray;
var
  List: TStringList;
  I: Integer;
begin
  Result := nil;
  List := TStringList.Create;
  try
    List.Delimiter := ',';
    List.StrictDelimiter := True;
    List.DelimitedText := AValue;
    SetLength(Result, List.Count);
    for I := 0 to List.Count - 1 do
      Result[I] := Trim(List[I]);
  finally
    List.Free;
  end;
end;

constructor TfrmTableEditor.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FIsNew := True;
  BuildUi;
end;

procedure TfrmTableEditor.BuildUi;
var
  Bottom: TPanel;
  Tabs: TPageControl;
  Sheet: TTabSheet;
  Lbl: TLabel;
  I: Integer;

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

  { Faixa de botoes no topo de cada aba. }
  function ButtonBar(AParent: TWinControl): TPanel;
  var
    P: TPanel;
  begin
    P := TPanel.Create(Self);
    P.Parent := AParent;
    P.Align := alTop;
    P.Height := 36;
    P.BevelOuter := bvNone;
    Result := P;
  end;

var
  Bar: TPanel;

begin
  Caption := 'Editar estrutura';
  Width := 960;
  Height := 620;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Tabela:';

  FEdtName := TEdit.Create(Self);
  FEdtName.Parent := Self;
  FEdtName.Left := 90;
  FEdtName.Top := 14;
  FEdtName.Width := 300;

  FTabs := TPageControl.Create(Self);
  FTabs.Parent := Self;
  FTabs.Left := 16;
  FTabs.Top := 50;
  FTabs.Width := 920;
  FTabs.Height := 490;
  FTabs.ActivePage := nil;

  { Aba: campos. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Campos';

  Bar := ButtonBar(Sheet);

  FGridFields := TStringGrid.Create(Self);
  FGridFields.Parent := Sheet;
  FGridFields.Align := alClient;
  FGridFields.Options := FGridFields.Options + [goEditing];
  FGridFields.FixedRows := 1;
  FGridFields.FixedCols := 1;
  FGridFields.ColCount := FIELD_COLS;
  FGridFields.RowCount := 2;
  FGridFields.Cells[0, 0] := 'Nome';
  FGridFields.Cells[1, 0] := 'Tipo';
  FGridFields.Cells[2, 0] := 'Tam';
  FGridFields.Cells[3, 0] := 'Escala';
  FGridFields.Cells[4, 0] := 'Not null';
  FGridFields.Cells[5, 0] := 'PK';
  FGridFields.Cells[6, 0] := 'Default';
  FGridFields.Cells[7, 0] := 'Descricao';
  for I := 0 to FIELD_COLS - 1 do
    FGridFields.ColWidths[I] := 110;
  FGridFields.ColWidths[7] := 200;

  AddButton(Bar, 'Adicionar', 8, 4, 90, @BtnAddFieldClick);
  AddButton(Bar, 'Remover', 104, 4, 90, @BtnRemoveFieldClick);
  AddButton(Bar, 'Subir', 200, 4, 70, @BtnUpFieldClick);
  AddButton(Bar, 'Descer', 276, 4, 70, @BtnDownFieldClick);

  { Aba: indices. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Indices';

  Bar := ButtonBar(Sheet);

  FGridIndexes := TStringGrid.Create(Self);
  FGridIndexes.Parent := Sheet;
  FGridIndexes.Align := alClient;
  FGridIndexes.Options := FGridIndexes.Options + [goEditing];
  FGridIndexes.FixedRows := 1;
  FGridIndexes.FixedCols := 1;
  FGridIndexes.ColCount := INDEX_COLS;
  FGridIndexes.RowCount := 2;
  FGridIndexes.Cells[0, 0] := 'Nome';
  FGridIndexes.Cells[1, 0] := 'Colunas (separadas por virgula)';
  FGridIndexes.Cells[2, 0] := 'Unico';
  for I := 0 to INDEX_COLS - 1 do
    FGridIndexes.ColWidths[I] := 180;

  AddButton(Bar, 'Adicionar', 8, 4, 90, @BtnAddIndexClick);
  AddButton(Bar, 'Remover', 104, 4, 90, @BtnRemoveIndexClick);

  { Aba: chaves estrangeiras. }
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'Chaves estrangeiras';

  Bar := ButtonBar(Sheet);

  FGridFks := TStringGrid.Create(Self);
  FGridFks.Parent := Sheet;
  FGridFks.Align := alClient;
  FGridFks.Options := FGridFks.Options + [goEditing];
  FGridFks.FixedRows := 1;
  FGridFks.FixedCols := 1;
  FGridFks.ColCount := FK_COLS;
  FGridFks.RowCount := 2;
  FGridFks.Cells[0, 0] := 'Nome';
  FGridFks.Cells[1, 0] := 'Colunas';
  FGridFks.Cells[2, 0] := 'Tabela referenciada';
  FGridFks.Cells[3, 0] := 'Colunas referenciadas';
  FGridFks.Cells[4, 0] := 'On update';
  FGridFks.Cells[5, 0] := 'On delete';
  for I := 0 to FK_COLS - 1 do
    FGridFks.ColWidths[I] := 140;

  AddButton(Bar, 'Adicionar', 8, 4, 90, @BtnAddFkClick);
  AddButton(Bar, 'Remover', 104, 4, 90, @BtnRemoveFkClick);

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  AddButton(Bottom, 'Previa do script', 8, 8, 130, @BtnPreviewClick);
  AddButton(Bottom, 'Executar', 146, 8, 90, @BtnExecuteClick);
  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Cancelar';
    Width := 90;
    Height := 26;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrCancel;
    Cancel := True;
  end;
end;

procedure TfrmTableEditor.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

procedure TfrmTableEditor.SetModel(const AModel: TTableModel; AIsNew: Boolean);
var
  I, J: Integer;
begin
  FModel := AModel;
  FOldModel := AModel;
  FIsNew := AIsNew;

  FEdtName.Text := AModel.Name;
  FEdtName.Enabled := AIsNew;

  FGridFields.RowCount := Length(AModel.Fields) + 1;
  for I := 0 to High(AModel.Fields) do
  begin
    FGridFields.Cells[0, I + 1] := AModel.Fields[I].Name;
    FGridFields.Cells[1, I + 1] := AModel.Fields[I].TypeName;
    FGridFields.Cells[2, I + 1] := IntToStr(AModel.Fields[I].Length);
    FGridFields.Cells[3, I + 1] := IntToStr(AModel.Fields[I].Scale);
    if AModel.Fields[I].NotNull then
      FGridFields.Cells[4, I + 1] := 'S'
    else
      FGridFields.Cells[4, I + 1] := 'N';
    if AModel.Fields[I].PrimaryKeyPos > 0 then
      FGridFields.Cells[5, I + 1] := IntToStr(AModel.Fields[I].PrimaryKeyPos);
    FGridFields.Cells[6, I + 1] := AModel.Fields[I].DefaultValue;
    FGridFields.Cells[7, I + 1] := AModel.Fields[I].Description;
  end;

  FGridIndexes.RowCount := Length(AModel.Indexes) + 1;
  for I := 0 to High(AModel.Indexes) do
  begin
    FGridIndexes.Cells[0, I + 1] := AModel.Indexes[I].Name;
    FGridIndexes.Cells[1, I + 1] := JoinStrings(AModel.Indexes[I].Fields, ', ');
    if AModel.Indexes[I].Unique then
      FGridIndexes.Cells[2, I + 1] := 'S'
    else
      FGridIndexes.Cells[2, I + 1] := 'N';
  end;

  FGridFks.RowCount := Length(AModel.ForeignKeys) + 1;
  for I := 0 to High(AModel.ForeignKeys) do
  begin
    FGridFks.Cells[0, I + 1] := AModel.ForeignKeys[I].Name;
    FGridFks.Cells[1, I + 1] := JoinStrings(AModel.ForeignKeys[I].Fields, ', ');
    FGridFks.Cells[2, I + 1] := AModel.ForeignKeys[I].RefTable;
    FGridFks.Cells[3, I + 1] := JoinStrings(AModel.ForeignKeys[I].RefFields, ', ');
    FGridFks.Cells[4, I + 1] := AModel.ForeignKeys[I].OnUpdate;
    FGridFks.Cells[5, I + 1] := AModel.ForeignKeys[I].OnDelete;
  end;
end;

function TfrmTableEditor.ModelFromGrids: TTableModel;
var
  I: Integer;
  F: TFieldDefModel;
  Idx: TIndexModel;
  Fk: TFkModel;
begin
  Result.Name := Trim(FEdtName.Text);
  Result.Description := FModel.Description;
  Result.Fields := nil;
  Result.Indexes := nil;
  Result.ForeignKeys := nil;

  for I := 1 to FGridFields.RowCount - 1 do
  begin
    if Trim(FGridFields.Cells[0, I]) = '' then
      Continue;
    F := Default(TFieldDefModel);
    F.Name := Trim(FGridFields.Cells[0, I]);
    F.TypeName := UpperCase(Trim(FGridFields.Cells[1, I]));
    F.Length := StrToIntDef(Trim(FGridFields.Cells[2, I]), 0);
    F.Scale := StrToIntDef(Trim(FGridFields.Cells[3, I]), 0);
    F.NotNull := SameText(Trim(FGridFields.Cells[4, I]), 'S');
    F.PrimaryKeyPos := StrToIntDef(Trim(FGridFields.Cells[5, I]), 0);
    F.DefaultValue := Trim(FGridFields.Cells[6, I]);
    F.Description := Trim(FGridFields.Cells[7, I]);
    SetLength(Result.Fields, Length(Result.Fields) + 1);
    Result.Fields[High(Result.Fields)] := F;
  end;

  for I := 1 to FGridIndexes.RowCount - 1 do
  begin
    if Trim(FGridIndexes.Cells[0, I]) = '' then
      Continue;
    Idx := Default(TIndexModel);
    Idx.Name := Trim(FGridIndexes.Cells[0, I]);
    Idx.Fields := SplitStrings(FGridIndexes.Cells[1, I]);
    Idx.Unique := SameText(Trim(FGridIndexes.Cells[2, I]), 'S');
    SetLength(Result.Indexes, Length(Result.Indexes) + 1);
    Result.Indexes[High(Result.Indexes)] := Idx;
  end;

  for I := 1 to FGridFks.RowCount - 1 do
  begin
    if Trim(FGridFks.Cells[0, I]) = '' then
      Continue;
    Fk := Default(TFkModel);
    Fk.Name := Trim(FGridFks.Cells[0, I]);
    Fk.Fields := SplitStrings(FGridFks.Cells[1, I]);
    Fk.RefTable := Trim(FGridFks.Cells[2, I]);
    Fk.RefFields := SplitStrings(FGridFks.Cells[3, I]);
    Fk.OnUpdate := Trim(FGridFks.Cells[4, I]);
    Fk.OnDelete := Trim(FGridFks.Cells[5, I]);
    SetLength(Result.ForeignKeys, Length(Result.ForeignKeys) + 1);
    Result.ForeignKeys[High(Result.ForeignKeys)] := Fk;
  end;
end;

function TfrmTableEditor.GetModel: TTableModel;
begin
  Result := ModelFromGrids;
end;

function TfrmTableEditor.Validate(var AError: string): Boolean;
var
  I, J: Integer;
  Found: Boolean;
  T: string;
  M: TTableModel;
begin
  AError := '';
  Result := False;
  M := ModelFromGrids;

  if M.Name = '' then
  begin
    AError := 'Informe o nome da tabela.';
    Exit;
  end;
  if Length(M.Fields) = 0 then
  begin
    AError := 'Informe ao menos um campo.';
    Exit;
  end;

  for I := 0 to High(M.Fields) do
  begin
    T := UpperCase(M.Fields[I].TypeName);
    Found := False;
    for J := 0 to High(KNOWN_TYPES) do
      if KNOWN_TYPES[J] = T then
        Found := True;
    if not Found then
    begin
      AError := 'Tipo desconhecido: ' + M.Fields[I].TypeName;
      Exit;
    end;
    if (T = 'VARCHAR') or (T = 'CHAR') then
      if M.Fields[I].Length <= 0 then
      begin
        AError := 'Informe o tamanho do campo ' + M.Fields[I].Name;
        Exit;
      end;
  end;

  Result := True;
end;

function TfrmTableEditor.BuildScript: string;
var
  NewModel, OldModel: TTableModel;
  Stmts: TStringArray;
  I: Integer;
begin
  Result := '';
  NewModel := ModelFromGrids;
  if FIsNew then
    Stmts := CreateTableSQL(NewModel)
  else
  begin
    OldModel := FOldModel;
    Stmts := AlterTableSQL(OldModel, NewModel);
  end;
  for I := 0 to High(Stmts) do
  begin
    if I > 0 then
      Result := Result + LineEnding;
    Result := Result + Stmts[I];
  end;
end;

function TfrmTableEditor.ScriptText: string;
begin
  Result := BuildScript;
end;

procedure TfrmTableEditor.BtnAddFieldClick(Sender: TObject);
begin
  FGridFields.RowCount := FGridFields.RowCount + 1;
  FGridFields.Cells[1, FGridFields.RowCount - 1] := 'INTEGER';
  FGridFields.Cells[4, FGridFields.RowCount - 1] := 'N';
end;

procedure TfrmTableEditor.BtnRemoveFieldClick(Sender: TObject);
var
  R: Integer;
begin
  R := FGridFields.Row;
  if R < 1 then
    Exit;
  FGridFields.DeleteRow(R);
end;

procedure TfrmTableEditor.BtnUpFieldClick(Sender: TObject);
var
  R, C: Integer;
  S: string;
begin
  R := FGridFields.Row;
  if R <= 1 then
    Exit;
  for C := 0 to FIELD_COLS - 1 do
  begin
    S := FGridFields.Cells[C, R];
    FGridFields.Cells[C, R] := FGridFields.Cells[C, R - 1];
    FGridFields.Cells[C, R - 1] := S;
  end;
end;

procedure TfrmTableEditor.BtnDownFieldClick(Sender: TObject);
var
  R, C: Integer;
  S: string;
begin
  R := FGridFields.Row;
  if (R < 1) or (R >= FGridFields.RowCount - 1) then
    Exit;
  for C := 0 to FIELD_COLS - 1 do
  begin
    S := FGridFields.Cells[C, R];
    FGridFields.Cells[C, R] := FGridFields.Cells[C, R + 1];
    FGridFields.Cells[C, R + 1] := S;
  end;
end;

procedure TfrmTableEditor.BtnAddIndexClick(Sender: TObject);
begin
  FGridIndexes.RowCount := FGridIndexes.RowCount + 1;
  FGridIndexes.Cells[2, FGridIndexes.RowCount - 1] := 'N';
end;

procedure TfrmTableEditor.BtnRemoveIndexClick(Sender: TObject);
var
  R: Integer;
begin
  R := FGridIndexes.Row;
  if R < 1 then
    Exit;
  FGridIndexes.DeleteRow(R);
end;

procedure TfrmTableEditor.BtnAddFkClick(Sender: TObject);
begin
  FGridFks.RowCount := FGridFks.RowCount + 1;
end;

procedure TfrmTableEditor.BtnRemoveFkClick(Sender: TObject);
var
  R: Integer;
begin
  R := FGridFks.Row;
  if R < 1 then
    Exit;
  FGridFks.DeleteRow(R);
end;

procedure TfrmTableEditor.GridsChanged(Sender: TObject);
begin
  { Os formularios sao lidos sob demanda, ao gerar o script. }
end;

procedure TfrmTableEditor.BtnPreviewClick(Sender: TObject);
var
  Err: string;
begin
  if not Validate(Err) then
  begin
    MessageDlg('Invalido', Err, mtWarning, [mbOK], 0);
    Exit;
  end;
  ShowSqlPreview('Previa do script DDL', BuildScript);
end;

procedure TfrmTableEditor.BtnExecuteClick(Sender: TObject);
var
  Err: string;
  Script: string;
begin
  if not Validate(Err) then
  begin
    MessageDlg('Invalido', Err, mtWarning, [mbOK], 0);
    Exit;
  end;
  if not Assigned(FSession) or not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de executar o script.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  Script := BuildScript;
  if not ConfirmSql('Executar script DDL', Script) then
    Exit;

  if not FSession.ExecuteScript(Script, Err) then
  begin
    MessageDlg('Erro na execucao', Err, mtError, [mbOK], 0);
    Exit;
  end;

  { O catalogo pode ter mudado: descarta o cache de metadados. }
  FSession.ClearMetadataCache;
  ModalResult := mrOk;
end;

end.
