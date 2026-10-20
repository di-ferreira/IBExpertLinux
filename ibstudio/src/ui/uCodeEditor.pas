unit uCodeEditor;
{ Frame de edicao de codigo (procedure, trigger, view, domain, exception e
  generator): compila, salva e carrega arquivos .sql. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Dialogs,
  LCLType, SynEdit, SynEditTypes, SynEditHighlighter, SynHighlighterSQL,
  ibtypes, ibsqlutil, ibcode, ibsession;

type
  TCodeEditorFrame = class(TPanel)
  private
    FSession: TIBStudioSession;
    FKind: TCodeKind;
    FName: string;
    FPrefix: string;
    FExists: Boolean;
    FSourceAvailable: Boolean;
    FEditor: TSynEdit;
    FMessages: TMemo;
    FSyn: TSynSQLSyn;
    procedure BuildUi;
    procedure BtnCompileClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure BtnCommentClick(Sender: TObject);
    procedure EditorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LogMessage(const S: string);
    procedure GoToErrorLine(const AMessage: string);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetSession(ASession: TIBStudioSession);
    { Objeto editado por este frame. }
    procedure SetObject(AKind: TCodeKind; const AName, APrefix: string;
      AExists: Boolean; ASourceAvailable: Boolean = True);
    procedure SetSource(const ASource: string);
    function SourceText: string;
    { Texto do painel de mensagens (usado nos testes). }
    function LogText: string;
    { Compila o codigo atual (mesmo caminho do botao). }
    procedure Compile;
    property Kind: TCodeKind read FKind;
    property ObjectName: string read FName;
  end;

implementation

constructor TCodeEditorFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FExists := False;
  BuildUi;
end;

procedure TCodeEditorFrame.BuildUi;
var
  TopPanel: TPanel;
  Bottom: TPanel;
  B: TButton;
begin
  Self.Align := alClient;
  Self.BevelOuter := bvNone;

  TopPanel := TPanel.Create(Self);
  TopPanel.Parent := Self;
  TopPanel.Align := alTop;
  TopPanel.Height := 28;
  TopPanel.BevelOuter := bvNone;

  B := TButton.Create(Self);
  B.Parent := TopPanel;
  B.Caption := 'Compilar (F9)';
  B.Left := 4;
  B.Top := 2;
  B.Width := 110;
  B.OnClick := @BtnCompileClick;

  B := TButton.Create(Self);
  B.Parent := TopPanel;
  B.Caption := 'Salvar...';
  B.Left := 118;
  B.Top := 2;
  B.Width := 80;
  B.OnClick := @BtnSaveClick;

  B := TButton.Create(Self);
  B.Parent := TopPanel;
  B.Caption := 'Carregar...';
  B.Left := 202;
  B.Top := 2;
  B.Width := 90;
  B.OnClick := @BtnLoadClick;

  B := TButton.Create(Self);
  B.Parent := TopPanel;
  B.Caption := 'Comentar';
  B.Left := 296;
  B.Top := 2;
  B.Width := 90;
  B.OnClick := @BtnCommentClick;

  FSyn := TSynSQLSyn.Create(Self);
  FSyn.SQLDialect := sqlInterbase6;

  FEditor := TSynEdit.Create(Self);
  FEditor.Parent := Self;
  FEditor.Align := alClient;
  FEditor.Font.Name := 'DejaVu Sans Mono';
  FEditor.Font.Size := 10;
  FEditor.Highlighter := FSyn;
  FEditor.OnKeyDown := @EditorKeyDown;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alBottom;
  Bottom.Height := 110;
  Bottom.BevelOuter := bvNone;

  FMessages := TMemo.Create(Self);
  FMessages.Parent := Bottom;
  FMessages.Align := alClient;
  FMessages.ReadOnly := True;
  FMessages.ScrollBars := ssBoth;
  FMessages.Font.Name := 'DejaVu Sans Mono';
  FMessages.Font.Size := 9;
end;

procedure TCodeEditorFrame.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

procedure TCodeEditorFrame.SetObject(AKind: TCodeKind; const AName,
  APrefix: string; AExists: Boolean; ASourceAvailable: Boolean);
begin
  FKind := AKind;
  FName := AName;
  FPrefix := APrefix;
  FExists := AExists;
  FSourceAvailable := ASourceAvailable;
  if not ASourceAvailable then
    LogMessage('Esta versao do Firebird nao guarda o texto deste objeto: ' +
      'o codigo nao pode ser editado aqui.');
end;

procedure TCodeEditorFrame.SetSource(const ASource: string);
begin
  FEditor.Lines.Text := ASource;
  FEditor.CaretX := 1;
  FEditor.CaretY := 1;
end;

function TCodeEditorFrame.SourceText: string;
begin
  Result := FEditor.Lines.Text;
end;

function TCodeEditorFrame.LogText: string;
begin
  Result := FMessages.Text;
end;

procedure TCodeEditorFrame.LogMessage(const S: string);
begin
  FMessages.Lines.Add(S);
end;

procedure TCodeEditorFrame.GoToErrorLine(const AMessage: string);
var
  Line: Integer;
begin
  Line := ErrorLineNumber(AMessage);
  if Line <= 0 then
    Exit;
  if Line > FEditor.Lines.Count then
    Exit;
  FEditor.CaretY := Line;
  FEditor.CaretX := 1;
  FEditor.SetFocus;
end;

procedure TCodeEditorFrame.Compile;
begin
  BtnCompileClick(Self);
end;

procedure TCodeEditorFrame.BtnCompileClick(Sender: TObject);
var
  SQL, Err: string;
begin
  if not Assigned(FSession) or not FSession.Connected then
  begin
    LogMessage('Conecte-se a um banco antes de compilar.');
    Exit;
  end;

  if not FSourceAvailable then
  begin
    LogMessage('O codigo deste objeto nao esta disponivel neste servidor.');
    Exit;
  end;

  SQL := CreateOrAlterSQL(FKind, FName, FEditor.Lines.Text, FPrefix);
  LogMessage(SQL);

  { O Firebird 2.5 nao recria um dominio: remove o antigo antes. }
  if (FKind = ckDomain) and FExists then
  begin
    if not FSession.ExecuteStatement(DropObjectSQL(ckDomain, FName), Err) then
    begin
      LogMessage('ERRO: ' + Err);
      Exit;
    end;
  end;

  { O codigo e um unico comando: nao pode ser dividido em varios. }
  if FSession.ExecuteStatement(SQL, Err) then
  begin
    LogMessage('Compilado com sucesso.');
    FSession.ClearMetadataCache;
  end
  else
  begin
    LogMessage('ERRO: ' + Err);
    GoToErrorLine(Err);
  end;
end;

procedure TCodeEditorFrame.BtnSaveClick(Sender: TObject);
var
  Dlg: TSaveDialog;
begin
  Dlg := TSaveDialog.Create(Self);
  try
    Dlg.Filter := 'Codigo SQL (*.sql)|*.sql|Todos (*.*)|*.*';
    Dlg.DefaultExt := 'sql';
    Dlg.FileName := FName + '.sql';
    if Dlg.Execute then
    begin
      FEditor.Lines.SaveToFile(Dlg.FileName);
      LogMessage('Salvo em ' + Dlg.FileName);
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TCodeEditorFrame.BtnLoadClick(Sender: TObject);
var
  Dlg: TOpenDialog;
begin
  Dlg := TOpenDialog.Create(Self);
  try
    Dlg.Filter := 'Codigo SQL (*.sql)|*.sql|Todos (*.*)|*.*';
    if Dlg.Execute then
    begin
      FEditor.Lines.LoadFromFile(Dlg.FileName);
      LogMessage('Carregado de ' + Dlg.FileName);
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TCodeEditorFrame.BtnCommentClick(Sender: TObject);
begin
  FEditor.Lines.Text := CommentLines(FEditor.Lines.Text, True);
end;

procedure TCodeEditorFrame.EditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then
  begin
    Key := 0;
    BtnCompileClick(Self);
  end;
end;

end.
