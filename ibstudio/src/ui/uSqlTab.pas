unit uSqlTab;
{ Aba de trabalho: editor SQL (SynEdit) + grade de resultados + mensagens.
  A execucao roda em uma thread que abre a propria conexao, para nao travar
  a interface. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, DBGrids, DB,
  Graphics, Dialogs, LCLType, SynEdit, SynEditTypes, SynEditHighlighter,
  SynCompletion, SynHighlighterSQL, bufdataset, ibtypes, ibsqlutil, ibsession;

type
  TQueryThread = class;

  { Painel com editor + grade + mensagens. Deriva de TPanel (e nao de TFrame)
    porque TFrame exige um recurso .lfm; aqui a interface e toda em codigo. }
  TSqlTabFrame = class(TPanel)
  private
    FEditor: TSynEdit;
    FGrid: TDBGrid;
    FMsg: TMemo;
    FSource: TDataSource;
    FBuffer: TResultBuffer;
    FThread: TQueryThread;
    FProfile: TConnectionProfile;
    FSession: TIBStudioSession;
    FStatusLabel: TLabel;
    FBtnRun: TButton;
    FBtnStop: TButton;
    FPanelEditor: TPanel;
    FCompletion: TSynCompletion;
    FAutoTimer: TTimer;
    procedure BuildUi;
    procedure BtnRunClick(Sender: TObject);
    procedure BtnStopClick(Sender: TObject);
    procedure EditorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AutoTimerTick(Sender: TObject);
    function CaretInStringOrComment: Boolean;
    procedure CompletionExecute(Sender: TObject);
    procedure QueryFinished(Sender: TObject);
    procedure SetBusy(ABusy: Boolean);
    procedure LogMessage(const S: string);
    function TextUpToCaret: string;
    procedure AddItem(const AText: string);
    procedure AddRelations;
    procedure AddFieldsOf(const ARelation: string);
    procedure AddKeywords;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetProfile(const AProfile: TConnectionProfile);
    { Sessao usada apenas para metadados do autocompletar (nao e owned). }
    procedure SetSession(ASession: TIBStudioSession);
    procedure SetSqlText(const ASQL: string);
    procedure ExecuteScript;
    procedure FocusEditor;
    { Abre a lista de completar no cursor (Ctrl+Espaco). }
    procedure ShowCompletion;
    function ScriptTitle: string;
    { A execucao roda em thread; estes dois servem para esperar/validar. }
    function Busy: Boolean;
    function ResultRowCount: Integer;
  end;

  TQueryThread = class(TThread)
  private
    FProfile: TConnectionProfile;
    FStatements: TStatementArray;
    FMaxRows: Integer;
    FOutcomes: array of TExecOutcome;
    FBuffer: TResultBuffer;
    FError: string;
  protected
    procedure Execute; override;
  public
    constructor Create(const AProfile: TConnectionProfile;
      const AStatements: TStatementArray; AMaxRows: Integer);
    destructor Destroy; override;
    { Transfere a posse do buffer de resultado para quem chamou. }
    function DetachBuffer: TResultBuffer;
    property Outcomes: TExecOutcomeArray read FOutcomes;
    property Error: string read FError;
  end;

implementation

{ TQueryThread }

constructor TQueryThread.Create(const AProfile: TConnectionProfile;
  const AStatements: TStatementArray; AMaxRows: Integer);
begin
  inherited Create(True);
  FProfile := AProfile.Clone;
  FStatements := AStatements;
  FMaxRows := AMaxRows;
  FBuffer := TResultBuffer.Create(nil);
  { A thread se libera sozinha depois do OnTerminate; a referencia e limpa
    no proprio handler para nao libertar o objeto de dentro dele. }
  FreeOnTerminate := True;
end;

destructor TQueryThread.Destroy;
begin
  FProfile.Free;
  FBuffer.Free;
  inherited Destroy;
end;

function TQueryThread.DetachBuffer: TResultBuffer;
begin
  Result := FBuffer;
  FBuffer := nil;
end;

procedure TQueryThread.Execute;
var
  Executor: TIBExecutor;
  I: Integer;
  Dest: TResultBuffer;
begin
  Executor := TIBExecutor.Create(FProfile, FMaxRows);
  SetLength(FOutcomes, Length(FStatements));
  try
    try
      Executor.Open;
    except
      on E: Exception do
      begin
        FError := DescribeException(E);
        Exit;
      end;
    end;

    Dest := FBuffer;
    for I := 0 to High(FStatements) do
    begin
      if Terminated then
        Break;
      { Sempre no mesmo buffer: o ultimo comando que devolve linhas vence. }
      FOutcomes[I] := Executor.ExecuteOne(FStatements[I], Dest);
    end;
  finally
    Executor.Free;
  end;
end;

{ TSqlTabFrame }

constructor TSqlTabFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  BuildUi;
end;

destructor TSqlTabFrame.Destroy;
begin
  if Assigned(FThread) then
  begin
    FThread.Terminate;
    FThread.WaitFor;
    FThread := nil;
  end;
  FBuffer.Free;
  FProfile.Free;
  inherited Destroy;
end;

procedure TSqlTabFrame.BuildUi;
var
  TopPanel: TPanel;
  Splitter: TSplitter;
  Bottom: TPanel;
  Syn: TSynSQLSyn;
begin
  FProfile := nil;
  FSession := nil;

  Self.Align := alClient;
  Self.Width := 700;
  Self.Height := 500;
  Self.BevelOuter := bvNone;
  Self.Caption := '';

  FSource := TDataSource.Create(Self);
  FBuffer := TResultBuffer.Create(Self);
  FSource.DataSet := FBuffer;

  TopPanel := TPanel.Create(Self);
  TopPanel.Parent := Self;
  TopPanel.Align := alTop;
  TopPanel.Top := 0;
  TopPanel.Height := 28;
  TopPanel.BevelOuter := bvNone;

  FBtnRun := TButton.Create(Self);
  FBtnRun.Parent := TopPanel;
  FBtnRun.Left := 4;
  FBtnRun.Top := 2;
  FBtnRun.Width := 90;
  FBtnRun.Caption := 'Executar (F5)';
  FBtnRun.OnClick := @BtnRunClick;

  FBtnStop := TButton.Create(Self);
  FBtnStop.Parent := TopPanel;
  FBtnStop.Left := 98;
  FBtnStop.Top := 2;
  FBtnStop.Width := 80;
  FBtnStop.Caption := 'Parar';
  FBtnStop.Enabled := False;
  FBtnStop.OnClick := @BtnStopClick;

  FStatusLabel := TLabel.Create(Self);
  FStatusLabel.Parent := TopPanel;
  FStatusLabel.Left := 190;
  FStatusLabel.Top := 6;
  FStatusLabel.Caption := 'pronto';

  FPanelEditor := TPanel.Create(Self);
  FPanelEditor.Parent := Self;
  FPanelEditor.Align := alTop;
  FPanelEditor.Top := 28;
  FPanelEditor.Height := 200;
  FPanelEditor.BevelOuter := bvNone;

  FEditor := TSynEdit.Create(Self);
  FEditor.Parent := FPanelEditor;
  FEditor.Align := alClient;
  FEditor.Font.Name := 'DejaVu Sans Mono';
  FEditor.Font.Size := 10;
  FEditor.Options := FEditor.Options + [eoBracketHighlight];
  FEditor.OnKeyDown := @EditorKeyDown;
  FEditor.OnKeyUp := @EditorKeyUp;
  Syn := TSynSQLSyn.Create(Self);
  Syn.SQLDialect := sqlInterbase6;
  FEditor.Highlighter := Syn;

  FCompletion := TSynCompletion.Create(Self);
  FCompletion.Editor := FEditor;
  FCompletion.EndOfTokenChr := '()[].;,=+-*/<>|&!@~^%''"{}';
  FCompletion.CaseSensitive := False;
  FCompletion.LinesInWindow := 14;
  FCompletion.Width := 360;
  FCompletion.OnExecute := @CompletionExecute;

  { Depois de digitar o ponto, abre a lista de campos daquela tabela/apelido. }
  FAutoTimer := TTimer.Create(Self);
  FAutoTimer.Interval := 120;
  FAutoTimer.Enabled := False;
  FAutoTimer.OnTimer := @AutoTimerTick;

  Splitter := TSplitter.Create(Self);
  Splitter.Parent := Self;
  Splitter.Align := alTop;
  Splitter.Top := 228;
  Splitter.Height := 5;

  Bottom := TPanel.Create(Self);
  Bottom.Parent := Self;
  Bottom.Align := alClient;
  Bottom.Top := 233;
  Bottom.BevelOuter := bvNone;

  FGrid := TDBGrid.Create(Self);
  FGrid.Parent := Bottom;
  FGrid.Align := alClient;
  FGrid.DataSource := FSource;
  FGrid.ReadOnly := True;
  FGrid.Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines,
    dgRowLines, dgRowSelect, dgAlwaysShowSelection];
  FGrid.TitleFont.Style := [fsBold];

  FMsg := TMemo.Create(Self);
  FMsg.Parent := Bottom;
  FMsg.Align := alBottom;
  FMsg.Height := 90;
  FMsg.ReadOnly := True;
  FMsg.ScrollBars := ssBoth;
  FMsg.Font.Name := 'DejaVu Sans Mono';
  FMsg.Font.Size := 9;

  FEditor.Lines.Add('select first 50 * from rdb$relations');
end;

procedure TSqlTabFrame.SetProfile(const AProfile: TConnectionProfile);
begin
  FProfile.Free;
  FProfile := nil;
  if Assigned(AProfile) then
    FProfile := AProfile.Clone;
end;

procedure TSqlTabFrame.SetSession(ASession: TIBStudioSession);
begin
  FSession := ASession;
end;

function TSqlTabFrame.TextUpToCaret: string;
var
  I, LastLine: Integer;
begin
  Result := '';
  if (FEditor.CaretY < 1) or (FEditor.CaretY > FEditor.Lines.Count) then
    Exit;
  LastLine := FEditor.CaretY - 2;
  for I := 0 to LastLine do
    Result := Result + FEditor.Lines[I] + LineEnding;
  Result := Result + Copy(FEditor.Lines[FEditor.CaretY - 1], 1, FEditor.CaretX - 1);
end;

procedure TSqlTabFrame.AddItem(const AText: string);
begin
  if (AText = '') or (FCompletion.ItemList.IndexOf(AText) >= 0) then
    Exit;
  FCompletion.ItemList.Add(AText);
end;

procedure TSqlTabFrame.AddRelations;
var
  Names: TStrings;
  I: Integer;
begin
  if not Assigned(FSession) then
    Exit;
  Names := FSession.RelationNames;
  for I := 0 to Names.Count - 1 do
    AddItem(QuoteIdentifier(Names[I]));
end;

procedure TSqlTabFrame.AddFieldsOf(const ARelation: string);
var
  Fields: TStrings;
  I: Integer;
begin
  if not Assigned(FSession) then
    Exit;
  Fields := FSession.RelationFields(ARelation);
  if not Assigned(Fields) then
    Exit;
  for I := 0 to Fields.Count - 1 do
    AddItem(QuoteIdentifier(Fields[I]));
end;

procedure TSqlTabFrame.AddKeywords;
var
  Words: TStringArray;
  I: Integer;
begin
  Words := SqlKeywords;
  for I := 0 to High(Words) do
    AddItem(Words[I]);
  Words := SqlFunctions;
  for I := 0 to High(Words) do
    AddItem(Words[I]);
end;

procedure TSqlTabFrame.CompletionExecute(Sender: TObject);
var
  SQLText: string;
  Req: TCompletionRequest;
  Relations: TStringArray;
  Rel: string;
  I: Integer;
begin
  FCompletion.ItemList.BeginUpdate;
  try
    FCompletion.ItemList.Clear;
    try
      SQLText := TextUpToCaret;
      Req := CompletionRequestAt(SQLText);
      case Req.Kind of
        ckRelation:
          begin
            AddRelations;
            AddKeywords;
          end;

        ckField:
          begin
            if Req.Qualifier <> '' then
            begin
              Rel := ResolveRelationQualifier(SQLText, Req.Qualifier);
              if Rel <> '' then
                AddFieldsOf(Rel)
              else
                AddRelations;
            end
            else
            begin
              Relations := ReferencedRelations(SQLText);
              for I := 0 to High(Relations) do
                AddFieldsOf(Relations[I]);
            end;
            AddKeywords;
          end;

      else
        begin
          AddKeywords;
          AddRelations;
        end;
      end;
    except
      on E: Exception do
        LogMessage('Autocompletar: ' + DescribeException(E));
    end;
  finally
    FCompletion.ItemList.EndUpdate;
  end;

  { Seleciona o primeiro item que casa com o que ja foi digitado. }
  FCompletion.Position := -1;
  for I := 0 to FCompletion.ItemList.Count - 1 do
    if (FCompletion.CurrentString = '') or
       SameText(Copy(FCompletion.ItemList[I], 1,
         Length(FCompletion.CurrentString)), FCompletion.CurrentString) then
    begin
      FCompletion.Position := I;
      Break;
    end;
end;

procedure TSqlTabFrame.ShowCompletion;
var
  P: TPoint;
  Req: TCompletionRequest;
begin
  if FCompletion.IsActive then
    FCompletion.Deactivate;
  P := FEditor.ClientToScreen(
    Point(FEditor.CaretXPix, FEditor.CaretYPix + FEditor.LineHeight + 1));
  Req := CompletionRequestAt(TextUpToCaret);
  FCompletion.Execute(Req.Prefix, P);
end;

function TSqlTabFrame.CaretInStringOrComment: Boolean;
var
  Token: string;
  Attri: TSynHighlighterAttributes;
  P: TPoint;
begin
  Result := False;
  P := Point(FEditor.CaretX, FEditor.CaretY);
  if P.X > 1 then
    Dec(P.X);
  if not FEditor.GetHighlighterAttriAtRowCol(P, Token, Attri) then
    Exit;
  Result := (Pos('String', Token) > 0) or (Pos('Comment', Token) > 0);
end;

procedure TSqlTabFrame.EditorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if FCompletion.IsActive then
    Exit;
  if (FEditor.CaretX > 1) and
     (FEditor.LineText[FEditor.CaretX - 1] = '.') and
     not CaretInStringOrComment then
  begin
    FAutoTimer.Enabled := False;
    FAutoTimer.Enabled := True;
  end;
end;

procedure TSqlTabFrame.AutoTimerTick(Sender: TObject);
begin
  FAutoTimer.Enabled := False;
  if FCompletion.IsActive or not FEditor.Focused then
    Exit;
  if (FEditor.CaretX > 1) and
     (FEditor.LineText[FEditor.CaretX - 1] = '.') and
     not CaretInStringOrComment then
    ShowCompletion;
end;

procedure TSqlTabFrame.FocusEditor;
begin
  { Durante a construcao do formulario o editor ainda nao pode receber foco. }
  if FEditor.CanFocus then
    FEditor.SetFocus;
end;

procedure TSqlTabFrame.SetSqlText(const ASQL: string);
begin
  FEditor.Lines.Text := ASQL;
  FEditor.CaretX := 1;
  FEditor.CaretY := 1;
end;

function TSqlTabFrame.ScriptTitle: string;
var
  S: string;
begin
  S := Trim(FEditor.Lines.Text);
  if S = '' then
    Exit('(vazio)');
  S := StringReplace(S, #13, ' ', [rfReplaceAll]);
  S := StringReplace(S, #10, ' ', [rfReplaceAll]);
  if Length(S) > 28 then
    Result := Copy(S, 1, 28) + '...'
  else
    Result := S;
end;

function TSqlTabFrame.Busy: Boolean;
begin
  Result := Assigned(FThread);
end;

function TSqlTabFrame.ResultRowCount: Integer;
begin
  if Assigned(FBuffer) and FBuffer.Active then
    Result := FBuffer.RecordCount
  else
    Result := 0;
end;

procedure TSqlTabFrame.LogMessage(const S: string);
begin
  FMsg.Lines.Add(S);
end;

procedure TSqlTabFrame.SetBusy(ABusy: Boolean);
begin
  FBtnRun.Enabled := not ABusy;
  FBtnStop.Enabled := ABusy;
  if ABusy then
    FStatusLabel.Caption := 'executando...';
end;

procedure TSqlTabFrame.BtnRunClick(Sender: TObject);
begin
  ExecuteScript;
end;

procedure TSqlTabFrame.BtnStopClick(Sender: TObject);
begin
  if Assigned(FThread) then
  begin
    FThread.Terminate;
    FStatusLabel.Caption := 'cancelando...';
  end;
end;

procedure TSqlTabFrame.EditorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    Key := 0;
    ExecuteScript;
  end
  else if (Key = VK_RETURN) and (ssCtrl in Shift) then
  begin
    Key := 0;
    ExecuteScript;
  end;
end;

procedure TSqlTabFrame.ExecuteScript;
var
  Statements: TStatementArray;
begin
  if Assigned(FThread) then
    Exit;
  if not Assigned(FProfile) then
  begin
    ShowMessage('Conecte-se a um banco antes de executar.');
    Exit;
  end;

  Statements := SplitStatements(FEditor.Lines.Text);
  if Length(Statements) = 0 then
  begin
    LogMessage('Nada para executar.');
    Exit;
  end;

  FMsg.Clear;
  FMsg.Lines.Add(Format('%d comando(s) para executar.', [Length(Statements)]));
  SetBusy(True);

  FThread := TQueryThread.Create(FProfile, Statements, 5000);
  FThread.OnTerminate := @QueryFinished;
  FThread.Start;
end;

procedure TSqlTabFrame.QueryFinished(Sender: TObject);
var
  Thread: TQueryThread;
  I: Integer;
  Outcome: TExecOutcome;
  TotalRows: Int64;
  TotalMs: Int64;
  Failures: Integer;
begin
  Thread := TQueryThread(Sender);
  { Libera a referencia antes de mexer nos dados: a thread se autodestroi. }
  FThread := nil;
  try
    if Thread.Error <> '' then
    begin
      LogMessage('Falha ao conectar: ' + Thread.Error);
      FStatusLabel.Caption := 'erro de conexao';
      Exit;
    end;

    TotalRows := 0;
    TotalMs := 0;
    Failures := 0;
    for I := 0 to High(Thread.Outcomes) do
    begin
      Outcome := Thread.Outcomes[I];
      TotalMs := TotalMs + Outcome.ElapsedMs;
      if Outcome.Succeeded then
      begin
        TotalRows := TotalRows + Outcome.Rows;
        if Outcome.Rows > 0 then
          LogMessage(Format('[%d] %s: %d linha(s), %d ms',
            [I + 1, StatementKindNames[Outcome.Kind], Outcome.Rows, Outcome.ElapsedMs]))
        else
          LogMessage(Format('[%d] %s: %d registro(s) afetado(s), %d ms',
            [I + 1, StatementKindNames[Outcome.Kind], Outcome.Affected, Outcome.ElapsedMs]));
      end
      else
      begin
        Inc(Failures);
        LogMessage(Format('[%d] ERRO: %s', [I + 1, Outcome.Error]));
        LogMessage('    comando: ' + Copy(Outcome.Statement, 1, 160));
      end;
    end;

    { DDL pode mudar o catalogo: descarta o cache do autocompletar. }
    if Assigned(FSession) then
      for I := 0 to High(Thread.Outcomes) do
        if Thread.Outcomes[I].Succeeded and (Thread.Outcomes[I].Kind = skDdl) then
        begin
          FSession.ClearMetadataCache;
          Break;
        end;

    { Adota o buffer produzido pela thread. }
    FSource.DataSet := nil;
    FreeAndNil(FBuffer);
    FBuffer := Thread.DetachBuffer;
    if FBuffer = nil then
      FBuffer := TResultBuffer.Create(Self);
    FSource.DataSet := FBuffer;

    FStatusLabel.Caption := Format('%d linha(s), %d ms, %d erro(s)',
      [TotalRows, TotalMs, Failures]);
  finally
    SetBusy(False);
  end;
end;

end.
