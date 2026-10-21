unit uHistory;
{ Lista do historico de comandos executados, por banco. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls;

type
  TfrmHistory = class(TForm)
  private
    FList: TListBox;
    FSearch: TEdit;
    FAll: TStringList;
    procedure BuildUi;
    procedure BtnInsertClick(Sender: TObject);
    procedure SearchChange(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Preenche a lista (o historico completo fica memorizado). }
    procedure SetItems(const AItems: TStrings);
    { Texto selecionado. }
    function SelectedText: string;
  end;

implementation

constructor TfrmHistory.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FAll := TStringList.Create;
  BuildUi;
end;

destructor TfrmHistory.Destroy;
begin
  FAll.Free;
  inherited Destroy;
end;

procedure TfrmHistory.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Historico de comandos';
  Width := 720;
  Height := 460;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Buscar:';

  FSearch := TEdit.Create(Self);
  FSearch.Parent := Self;
  FSearch.Left := 80;
  FSearch.Top := 14;
  FSearch.Width := 300;
  FSearch.OnChange := @SearchChange;

  FList := TListBox.Create(Self);
  FList.Parent := Self;
  FList.Left := 16;
  FList.Top := 46;
  FList.Width := 680;
  FList.Height := 330;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Inserir no editor';
    Width := 130;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrRight;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnInsertClick;
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

procedure TfrmHistory.SetItems(const AItems: TStrings);
begin
  FAll.Assign(AItems);
  FList.Items.Assign(AItems);
end;

function TfrmHistory.SelectedText: string;
begin
  Result := '';
  if FList.ItemIndex >= 0 then
    Result := FList.Items[FList.ItemIndex];
end;

procedure TfrmHistory.BtnInsertClick(Sender: TObject);
begin
  if Trim(SelectedText) <> '' then
    ModalResult := mrOk;
end;

procedure TfrmHistory.SearchChange(Sender: TObject);
var
  I: Integer;
  Filtro: string;
begin
  Filtro := Trim(FSearch.Text);
  FList.Items.Clear;
  for I := 0 to FAll.Count - 1 do
    if (Filtro = '') or (Pos(UpperCase(Filtro), UpperCase(FAll[I])) > 0) then
      FList.Items.Add(FAll[I]);
end;

end.
