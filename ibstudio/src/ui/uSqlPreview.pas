unit uSqlPreview;
{ Dialogo modal para mostrar um script SQL antes de executar. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, SynEdit,
  SynHighlighterSQL;

type
  TfrmSqlPreview = class(TForm)
  private
    FEditor: TSynEdit;
    FSyn: TSynSQLSyn;
    FBtnOk: TButton;
    FBtnCancel: TButton;
    procedure BuildUi;
    procedure SetConfirmMode(AValue: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSql(const ASQL: string);
    function GetSqlText: string;
    property SqlText: string read GetSqlText;
  end;

{ Mostra o script apenas para leitura (botao Fechar). }
procedure ShowSqlPreview(const ATitle, ASQL: string);

{ Mostra o script com Executar/Cancelar; True quando o usuario confirma. }
function ConfirmSql(const ATitle, ASQL: string): Boolean;

implementation

constructor TfrmSqlPreview.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  BuildUi;
end;

procedure TfrmSqlPreview.BuildUi;
var
  Bottom: TPanel;
begin
  Caption := 'Prévia de SQL';
  Width := 780;
  Height := 540;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  FBtnOk := TButton.Create(Self);
  FBtnOk.Parent := Bottom;
  FBtnOk.Caption := 'Executar';
  FBtnOk.Width := 100;
  FBtnOk.Height := 28;
  FBtnOk.Top := 8;
  FBtnOk.Anchors := [akTop, akRight];
  FBtnOk.AnchorSide[akRight].Side := asrRight;
  FBtnOk.AnchorSide[akRight].Control := Bottom;
  FBtnOk.BorderSpacing.Right := 8;
  FBtnOk.ModalResult := mrOk;
  FBtnOk.Default := True;

  FBtnCancel := TButton.Create(Self);
  FBtnCancel.Parent := Bottom;
  FBtnCancel.Caption := 'Cancelar';
  FBtnCancel.Width := 100;
  FBtnCancel.Height := 28;
  FBtnCancel.Top := 8;
  FBtnCancel.Anchors := [akTop, akRight];
  FBtnCancel.AnchorSide[akRight].Side := asrLeft;
  FBtnCancel.AnchorSide[akRight].Control := FBtnOk;
  FBtnCancel.BorderSpacing.Right := 8;
  FBtnCancel.ModalResult := mrCancel;
  FBtnCancel.Cancel := True;

  FSyn := TSynSQLSyn.Create(Self);
  FSyn.SQLDialect := sqlInterbase6;

  FEditor := TSynEdit.Create(Self);
  FEditor.Parent := Self;
  FEditor.Align := alClient;
  FEditor.ReadOnly := True;
  FEditor.ScrollBars := ssAutoBoth;
  FEditor.Highlighter := FSyn;
  FEditor.Font.Name := 'DejaVu Sans Mono';
  FEditor.Font.Size := 10;
  FEditor.Gutter.Visible := False;
end;

procedure TfrmSqlPreview.SetSql(const ASQL: string);
begin
  FEditor.Lines.Text := ASQL;
  FEditor.CaretX := 1;
  FEditor.CaretY := 1;
end;

function TfrmSqlPreview.GetSqlText: string;
begin
  Result := FEditor.Lines.Text;
end;

procedure TfrmSqlPreview.SetConfirmMode(AValue: Boolean);begin
  FBtnCancel.Visible := AValue;
  if AValue then
    FBtnOk.Caption := 'Executar'
  else
    FBtnOk.Caption := 'Fechar';
end;

procedure ShowSqlPreview(const ATitle, ASQL: string);
var
  Dlg: TfrmSqlPreview;
begin
  Dlg := TfrmSqlPreview.Create(nil);
  try
    Dlg.Caption := ATitle;
    Dlg.SetSql(ASQL);
    Dlg.SetConfirmMode(False);
    Dlg.ShowModal;
  finally
    Dlg.Free;
  end;
end;

function ConfirmSql(const ATitle, ASQL: string): Boolean;
var
  Dlg: TfrmSqlPreview;
begin
  Dlg := TfrmSqlPreview.Create(nil);
  try
    Dlg.Caption := ATitle;
    Dlg.SetSql(ASQL);
    Dlg.SetConfirmMode(True);
    Result := Dlg.ShowModal = mrOk;
  finally
    Dlg.Free;
  end;
end;

end.
