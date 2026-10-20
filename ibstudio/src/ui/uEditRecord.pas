unit uEditRecord;
{ Dialogo modal para editar (ou criar) um registro de uma tabela.
  Mostra um editor por campo, com opcao de NULL nos campos anulaveis. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls,
  ibtypes, ibmetadata;

type
  TfrmEditRecord = class(TForm)
  private
    FScroll: TScrollBox;
    FInner: TPanel;
    FEdits: array of TEdit;
    FNulls: array of TCheckBox;
    FFields: TFieldMetaArray;
    procedure BuildUi;
    procedure ClearRows;
    procedure BuildRows;
  public
    constructor Create(AOwner: TComponent); override;
    { Campos a exibir (nome, tipo e nulabilidade). }
    procedure SetFields(const AFields: TFieldMetaArray);
    { Valores iniciais: lista "nome=valor" e lista de campos nulos. }
    procedure SetValues(const AValues: TStrings; const ANulls: TStrings = nil);
    { Valores digitados (sem os campos marcados como NULL). }
    function GetValues: TStrings;
    { Nomes dos campos marcados como NULL. }
    function GetNullFields: TStrings;
  end;

implementation

constructor TfrmEditRecord.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmEditRecord.BuildUi;
var
  Bottom: TPanel;
begin
  Caption := 'Editar registro';
  Width := 720;
  Height := 480;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Salvar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrOk;
    Default := True;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Cancelar';
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

  FScroll := TScrollBox.Create(Self);
  FScroll.Parent := Self;
  FScroll.Align := alClient;

  FInner := TPanel.Create(Self);
  FInner.Parent := FScroll;
  FInner.Width := 690;
  FInner.Height := 40;
  FInner.BevelOuter := bvNone;
end;

procedure TfrmEditRecord.ClearRows;
var
  I: Integer;
begin
  for I := 0 to High(FEdits) do
    FreeAndNil(FEdits[I]);
  for I := 0 to High(FNulls) do
    FreeAndNil(FNulls[I]);
  SetLength(FEdits, 0);
  SetLength(FNulls, 0);
  while FInner.ControlCount > 0 do
    FInner.Controls[0].Free;
end;

procedure TfrmEditRecord.BuildRows;
var
  I, Y: Integer;
  Meta: TFieldMeta;
  Lbl: TLabel;
begin
  ClearRows;
  SetLength(FEdits, Length(FFields));
  SetLength(FNulls, Length(FFields));

  for I := 0 to High(FFields) do
  begin
    Meta := FFields[I];
    Y := 8 + I * 26;

    Lbl := TLabel.Create(Self);
    Lbl.Parent := FInner;
    Lbl.Left := 8;
    Lbl.Top := Y + 4;
    Lbl.Width := 245;
    Lbl.Caption := Meta.Name + ' : ' +
      DescribeColumn(Meta.FieldType, Meta.SubType, Meta.Length,
        Meta.Precision, Meta.Scale, Meta.Nullable);

    FEdits[I] := TEdit.Create(Self);
    FEdits[I].Parent := FInner;
    FEdits[I].Left := 260;
    FEdits[I].Top := Y;
    FEdits[I].Width := 300;
    FEdits[I].Height := 22;
    if Meta.FieldType = fbtBlob then
    begin
      FEdits[I].Enabled := False;
      FEdits[I].Text := '(blob)';
    end;

    FNulls[I] := TCheckBox.Create(Self);
    FNulls[I].Parent := FInner;
    FNulls[I].Left := 570;
    FNulls[I].Top := Y + 2;
    FNulls[I].Caption := 'NULL';
    FNulls[I].Enabled := Meta.Nullable and (Meta.FieldType <> fbtBlob);
  end;

  FInner.Height := 16 + Length(FFields) * 26;
end;

procedure TfrmEditRecord.SetFields(const AFields: TFieldMetaArray);
begin
  FFields := AFields;
  BuildRows;
end;

procedure TfrmEditRecord.SetValues(const AValues: TStrings; const ANulls: TStrings);
var
  I: Integer;
begin
  for I := 0 to High(FFields) do
  begin
    if AValues.IndexOfName(FFields[I].Name) >= 0 then
      FEdits[I].Text := AValues.Values[FFields[I].Name]
    else
      FEdits[I].Text := '';
    FNulls[I].Checked := Assigned(ANulls) and
      (ANulls.IndexOfName(FFields[I].Name) >= 0);
  end;
end;

function TfrmEditRecord.GetValues: TStrings;
var
  I: Integer;
begin
  Result := TStringList.Create;
  for I := 0 to High(FFields) do
    if not FNulls[I].Checked then
      Result.Values[FFields[I].Name] := FEdits[I].Text;
end;

function TfrmEditRecord.GetNullFields: TStrings;
var
  I: Integer;
begin
  Result := TStringList.Create;
  for I := 0 to High(FFields) do
    if FNulls[I].Checked then
      Result.Values[FFields[I].Name] := '1';
end;

end.
