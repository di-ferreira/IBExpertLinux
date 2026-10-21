unit uSnippets;
{ Gerencia os snippets de SQL do usuario (ficam nas configuracoes). }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls;

type
  TfrmSnippets = class(TForm)
  private
    FList: TListBox;
    FEdtName: TEdit;
    FEdtText: TMemo;
    FSnippets: TStringList;
    procedure BuildUi;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure ListSelectionChange(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Carrega a lista "nome=texto" (a lista e copiada). }
    procedure SetSnippets(const ASnippets: TStrings);
    { Texto dos snippets alterados. }
    function Snippets: TStringList;
  end;

implementation

constructor TfrmSnippets.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FSnippets := TStringList.Create;
  BuildUi;
end;

destructor TfrmSnippets.Destroy;
begin
  FSnippets.Free;
  inherited Destroy;
end;

procedure TfrmSnippets.BuildUi;
var
  Bottom: TPanel;
  Lbl: TLabel;
begin
  Caption := 'Snippets';
  Width := 640;
  Height := 460;
  Position := poScreenCenter;
  BorderStyle := bsSizeable;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 16;
  Lbl.Top := 18;
  Lbl.Caption := 'Nome:';

  FEdtName := TEdit.Create(Self);
  FEdtName.Parent := Self;
  FEdtName.Left := 80;
  FEdtName.Top := 14;
  FEdtName.Width := 200;

  Lbl := TLabel.Create(Self);
  Lbl.Parent := Self;
  Lbl.Left := 300;
  Lbl.Top := 18;
  Lbl.Caption := 'Texto:';

  FEdtText := TMemo.Create(Self);
  FEdtText.Parent := Self;
  FEdtText.Left := 300;
  FEdtText.Top := 40;
  FEdtText.Width := 320;
  FEdtText.Height := 260;
  FEdtText.ScrollBars := ssBoth;

  FList := TListBox.Create(Self);
  FList.Parent := Self;
  FList.Left := 16;
  FList.Top := 40;
  FList.Width := 260;
  FList.Height := 260;
  FList.OnClick := @ListSelectionChange;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 44;
  Bottom.BevelOuter := bvNone;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Adicionar';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrLeft;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnAddClick;
  end;

  with TButton.Create(Self) do
  begin
    Parent := Bottom;
    Caption := 'Remover';
    Width := 100;
    Height := 28;
    Top := 8;
    Anchors := [akTop, akRight];
    AnchorSide[akRight].Side := asrLeft;
    AnchorSide[akRight].Control := Bottom;
    BorderSpacing.Right := 8;
    OnClick := @BtnRemoveClick;
  end;

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
    OnClick := @BtnSaveClick;
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

procedure TfrmSnippets.SetSnippets(const ASnippets: TStrings);
begin
  FSnippets.Assign(ASnippets);
  FList.Items.Clear;
  FList.Items.Assign(FSnippets);
end;

function TfrmSnippets.Snippets: TStringList;
begin
  Result := FSnippets;
end;

procedure TfrmSnippets.ListSelectionChange(Sender: TObject);
begin
  if FList.ItemIndex < 0 then
    Exit;
  FEdtName.Text := FSnippets.Names[FList.ItemIndex];
  FEdtText.Lines.Text := FSnippets.ValueFromIndex[FList.ItemIndex];
end;

procedure TfrmSnippets.BtnAddClick(Sender: TObject);
var
  SnippetName: string;
begin
  SnippetName := Trim(FEdtName.Text);
  if SnippetName = '' then
    Exit;
  FSnippets.Values[SnippetName] := FEdtText.Lines.Text;
  FList.Items.Assign(FSnippets);
end;

procedure TfrmSnippets.BtnRemoveClick(Sender: TObject);
var
  SnippetName: string;
begin
  if FList.ItemIndex < 0 then
    Exit;
  SnippetName := FSnippets.Names[FList.ItemIndex];
  FSnippets.Delete(FSnippets.IndexOfName(SnippetName));
  FList.Items.Assign(FSnippets);
  FEdtName.Text := '';
  FEdtText.Lines.Clear;
end;

procedure TfrmSnippets.BtnSaveClick(Sender: TObject);
begin
  if Trim(FEdtName.Text) <> '' then
    FSnippets.Values[Trim(FEdtName.Text)] := FEdtText.Lines.Text;
  ModalResult := mrOk;
end;

end.
