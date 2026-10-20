unit uCsvOptions;
{ Dialogo com as opcoes de leitura e escrita de CSV. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ibcsv;

type
  TfrmCsvOptions = class(TForm)
  private
    FChkHeader: TCheckBox;
    FCmbDelimiter: TComboBox;
    FEdtNull: TEdit;
    FCmbEncoding: TComboBox;
    procedure BuildUi;
    procedure FillCombos;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetOptions(const AOptions: TCsvOptions);
    function GetOptions: TCsvOptions;
  end;

{ Mostra as opcoes e devolve True quando o usuario confirmar. }
function CsvOptionsDialog(const AOptions: TCsvOptions;
  out AResult: TCsvOptions): Boolean;

implementation

const
  DELIMITERS: array[0..3] of string = (';', ',', '|', #9);
  ENCODINGS: array[0..1] of string = ('UTF8', 'ISO8859_1');

constructor TfrmCsvOptions.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmCsvOptions.FillCombos;
begin
  FCmbDelimiter.Clear;
  FCmbDelimiter.Items.Add('ponto e virgula');
  FCmbDelimiter.Items.Add('virgula');
  FCmbDelimiter.Items.Add('pipe');
  FCmbDelimiter.Items.Add('tabulacao');

  FCmbEncoding.Clear;
  FCmbEncoding.Items.Add('UTF-8');
  FCmbEncoding.Items.Add('ISO-8859-1');

  FCmbDelimiter.ItemIndex := 0;
  FCmbEncoding.ItemIndex := 0;
end;

procedure TfrmCsvOptions.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
  I: Integer;
begin
  Caption := 'Opcoes de CSV';
  Width := 460;
  Height := 320;
  Position := poScreenCenter;
  BorderStyle := bsDialog;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 20;
  Lbl.Caption := 'Separador:';

  FCmbDelimiter := TComboBox.Create(Self);
  FCmbDelimiter.Parent := Self;
  FCmbDelimiter.Left := 130;
  FCmbDelimiter.Top := 16;
  FCmbDelimiter.Width := 200;
  FCmbDelimiter.Style := csDropDownList;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 56;
  Lbl.Caption := 'Texto para NULL:';

  FEdtNull := TEdit.Create(Self);
  FEdtNull.Parent := Self;
  FEdtNull.Left := 130;
  FEdtNull.Top := 52;
  FEdtNull.Width := 200;

  FChkHeader := TCheckBox.Create(Self);
  FChkHeader.Parent := Self;
  FChkHeader.Left := 16;
  FChkHeader.Top := 90;
  FChkHeader.Caption := 'Primeira linha e cabecalho';

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 126;
  Lbl.Caption := 'Codificacao:';

  FCmbEncoding := TComboBox.Create(Self);
  FCmbEncoding.Parent := Self;
  FCmbEncoding.Left := 130;
  FCmbEncoding.Top := 122;
  FCmbEncoding.Width := 200;
  FCmbEncoding.Style := csDropDownList;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'OK';
    Width := 90;
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
    Width := 90;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrLeft;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    ModalResult := mrCancel;
    Cancel := True;
  end;

  FillCombos;
end;

procedure TfrmCsvOptions.SetOptions(const AOptions: TCsvOptions);
var
  I: Integer;
  Delim: string;
begin
  FChkHeader.Checked := AOptions.WriteHeader and AOptions.ReadHeader;
  Delim := AOptions.Delimiter;
  if Delim = '' then
    Delim := ';';
  for I := 0 to High(DELIMITERS) do
    if DELIMITERS[I] = Delim then
      FCmbDelimiter.ItemIndex := I;

  FEdtNull.Text := AOptions.NullToken;

  if SameText(AOptions.Encoding, 'ISO8859_1') then
    FCmbEncoding.ItemIndex := 1
  else
    FCmbEncoding.ItemIndex := 0;
end;

function TfrmCsvOptions.GetOptions: TCsvOptions;
var
  O: TCsvOptions;
begin
  DefaultCsvOptions(O);
  O.WriteHeader := FChkHeader.Checked;
  O.ReadHeader := FChkHeader.Checked;
  O.NullToken := FEdtNull.Text;
  if (FCmbDelimiter.ItemIndex >= 0) and
     (FCmbDelimiter.ItemIndex <= High(DELIMITERS)) then
    O.Delimiter := DELIMITERS[FCmbDelimiter.ItemIndex];
  if (FCmbEncoding.ItemIndex >= 0) and
     (FCmbEncoding.ItemIndex <= High(ENCODINGS)) then
    O.Encoding := ENCODINGS[FCmbEncoding.ItemIndex];
  Result := O;
end;

function CsvOptionsDialog(const AOptions: TCsvOptions;
  out AResult: TCsvOptions): Boolean;
var
  Dlg: TfrmCsvOptions;
begin
  Dlg := TfrmCsvOptions.Create(nil);
  try
    Dlg.SetOptions(AOptions);
    Result := Dlg.ShowModal = mrOk;
    if Result then
      AResult := Dlg.GetOptions;
  finally
    Dlg.Free;
  end;
end;

end.
