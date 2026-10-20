unit uMain;
{ Janela principal do IBStudio: arvore de metadados + abas SQL. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Menus,
  Graphics, Dialogs, LCLType,
  ibtypes, ibsqlutil, ibmetadata, ibsettings, ibcsv, ibddl, ibsession, uConnect,
  uSqlTab, uSqlPreview, uCsvOptions, uImportCsv, uTableEditor;

type
  TfrmMain = class(TForm)
  private
    FSession: TIBStudioSession;
    FTree: TTreeView;
    FTabs: TPageControl;
    FStatus: TStatusBar;
    FSettings: TStudioSettings;
    FLblConn: TLabel;
    FNewTabBtn: TButton;
    FCloseTabBtn: TButton;
    FConnectBtn: TButton;
    FDisconnectBtn: TButton;
    FRunBtn: TButton;
    FTreeMenu: TPopupMenu;
    FMiOpenData: TMenuItem;
    FMiNewSql: TMenuItem;
    FMiEditStructure: TMenuItem;
    procedure BuildUi;
    procedure ConnectClick(Sender: TObject);
    procedure DisconnectClick(Sender: TObject);
    procedure NewTabClick(Sender: TObject);
    procedure CloseTabClick(Sender: TObject);
    procedure RunClick(Sender: TObject);
    procedure CompleteClick(Sender: TObject);
    procedure MenuPreviewClick(Sender: TObject);
    procedure MenuExportCsvClick(Sender: TObject);
    procedure MenuImportCsvClick(Sender: TObject);
    procedure MenuNewTableClick(Sender: TObject);
    procedure EditStructureClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
    procedure MenuAboutClick(Sender: TObject);
    procedure TreeExpanding(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
    procedure TreeDblClick(Sender: TObject);
    procedure TreeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeMenuPopup(Sender: TObject);
    procedure OpenDataClick(Sender: TObject);
    procedure NewSqlFromTreeClick(Sender: TObject);
    { Abre uma aba com "select first 100" e executa. }
    procedure OpenDataTab(const ARelation: string);
    procedure DoConnect(const AProfile: TConnectionProfile);
    procedure DoDisconnect;
    procedure PopulateTree;
    procedure FreeTreeData;
    procedure FillTreeNode(ATreeItem: TTreeNode; AMeta: TMetadataNode);
    procedure UpdateStatus;
    function NewSqlTab(const ASQL: string; const ATitle: string = ''): TSqlTabFrame;
    procedure SaveSettings;
    function SettingsFile: string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Conecta usando o mesmo caminho do botao "Conectar". }
    procedure ConnectTo(const AProfile: TConnectionProfile);
    function ActiveTab: TSqlTabFrame;
    property Tree: TTreeView read FTree;
    property Tabs: TPageControl read FTabs;
  end;

var
  frmMain: TfrmMain;

implementation

procedure TfrmMain.ConnectTo(const AProfile: TConnectionProfile);
begin
  DoConnect(AProfile);
end;

constructor TfrmMain.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FSession := TIBStudioSession.Create;
  FSettings := TStudioSettings.Create(SettingsFile);
  FSettings.Load;
  BuildUi;
  UpdateStatus;
end;

destructor TfrmMain.Destroy;
begin
  FSession.Free;
  FSettings.Free;
  inherited Destroy;
end;

function TfrmMain.SettingsFile: string;
begin
  Result := GetAppConfigFile(False);
end;

procedure TfrmMain.SaveSettings;
begin
  FSettings.Save;
end;

procedure TfrmMain.BuildUi;
var
  TopPanel: TPanel;
  LeftPanel: TPanel;
  Splitter: TSplitter;
  Main: TMainMenu;
  MFile, MQuery, MFerramentas, MBanco, MHelp, Item: TMenuItem;
begin
  Caption := 'IBStudio';
  Width := 1100;
  Height := 720;
  Position := poScreenCenter;

  Main := TMainMenu.Create(Self);
  Menu := Main;

  MFile := TMenuItem.Create(Main);
  MFile.Caption := '&Arquivo';
  Main.Items.Add(MFile);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Conectar...';
  Item.OnClick := @ConnectClick;
  MFile.Add(Item);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Desconectar';
  Item.OnClick := @DisconnectClick;
  MFile.Add(Item);

  MFile.AddSeparator;

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Sair';
  Item.OnClick := @MenuExitClick;
  MFile.Add(Item);

  MQuery := TMenuItem.Create(Main);
  MQuery.Caption := '&Consulta';
  Main.Items.Add(MQuery);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Nova aba';
  Item.OnClick := @NewTabClick;
  MQuery.Add(Item);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Executar (F5)';
  Item.OnClick := @RunClick;
  MQuery.Add(Item);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Completar código (Ctrl+Espaço)';
  Item.OnClick := @CompleteClick;
  MQuery.Add(Item);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Fechar aba';
  Item.OnClick := @CloseTabClick;
  MQuery.Add(Item);

  MQuery.AddSeparator;

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Exportar CSV...';
  Item.OnClick := @MenuExportCsvClick;
  MQuery.Add(Item);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Importar CSV...';
  Item.OnClick := @MenuImportCsvClick;
  MQuery.Add(Item);

  MBanco := TMenuItem.Create(Main);
  MBanco.Caption := '&Banco';
  Main.Items.Add(MBanco);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Nova tabela...';
  Item.OnClick := @MenuNewTableClick;
  MBanco.Add(Item);

  MFerramentas := TMenuItem.Create(Main);
  MFerramentas.Caption := '&Ferramentas';
  Main.Items.Add(MFerramentas);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Prévia de SQL...';
  Item.OnClick := @MenuPreviewClick;
  MFerramentas.Add(Item);

  MHelp := TMenuItem.Create(Main);
  MHelp.Caption := 'A&juda';
  Main.Items.Add(MHelp);

  Item := TMenuItem.Create(Main);
  Item.Caption := 'Sobre';
  Item.OnClick := @MenuAboutClick;
  MHelp.Add(Item);

  TopPanel := TPanel.Create(Self);
  TopPanel.Parent := Self;
  TopPanel.Align := alTop;
  TopPanel.Top := 0;
  TopPanel.Height := 32;
  TopPanel.BevelOuter := bvNone;

  FConnectBtn := TButton.Create(Self);
  FConnectBtn.Parent := TopPanel;
  FConnectBtn.Left := 4;
  FConnectBtn.Top := 3;
  FConnectBtn.Width := 90;
  FConnectBtn.Caption := 'Conectar';
  FConnectBtn.OnClick := @ConnectClick;

  FDisconnectBtn := TButton.Create(Self);
  FDisconnectBtn.Parent := TopPanel;
  FDisconnectBtn.Left := 98;
  FDisconnectBtn.Top := 3;
  FDisconnectBtn.Width := 100;
  FDisconnectBtn.Caption := 'Desconectar';
  FDisconnectBtn.OnClick := @DisconnectClick;

  FNewTabBtn := TButton.Create(Self);
  FNewTabBtn.Parent := TopPanel;
  FNewTabBtn.Left := 210;
  FNewTabBtn.Top := 3;
  FNewTabBtn.Width := 90;
  FNewTabBtn.Caption := 'Nova aba';
  FNewTabBtn.OnClick := @NewTabClick;

  FCloseTabBtn := TButton.Create(Self);
  FCloseTabBtn.Parent := TopPanel;
  FCloseTabBtn.Left := 304;
  FCloseTabBtn.Top := 3;
  FCloseTabBtn.Width := 90;
  FCloseTabBtn.Caption := 'Fechar aba';
  FCloseTabBtn.OnClick := @CloseTabClick;

  FRunBtn := TButton.Create(Self);
  FRunBtn.Parent := TopPanel;
  FRunBtn.Left := 398;
  FRunBtn.Top := 3;
  FRunBtn.Width := 90;
  FRunBtn.Caption := 'Executar (F5)';
  FRunBtn.OnClick := @RunClick;

  FLblConn := TLabel.Create(Self);
  FLblConn.Parent := TopPanel;
  FLblConn.Left := 500;
  FLblConn.Top := 9;
  FLblConn.Caption := 'desconectado';
  FLblConn.Font.Color := clGray;

  LeftPanel := TPanel.Create(Self);
  LeftPanel.Parent := Self;
  LeftPanel.Align := alLeft;
  LeftPanel.Left := 0;
  LeftPanel.Width := 290;
  LeftPanel.BevelOuter := bvNone;

  FTree := TTreeView.Create(Self);
  FTree.Parent := LeftPanel;
  FTree.Align := alClient;
  FTree.ReadOnly := True;
  FTree.HideSelection := False;
  FTree.OnExpanding := @TreeExpanding;
  FTree.OnDblClick := @TreeDblClick;
  FTree.OnMouseDown := @TreeMouseDown;

  { Menu de contexto da arvore: duplo clique e atalho para "Show data". }
  FTreeMenu := TPopupMenu.Create(Self);
  FMiOpenData := TMenuItem.Create(FTreeMenu);
  FMiOpenData.Caption := 'Abrir dados';
  FMiOpenData.OnClick := @OpenDataClick;
  FTreeMenu.Items.Add(FMiOpenData);
  FMiNewSql := TMenuItem.Create(FTreeMenu);
  FMiNewSql.Caption := 'Novo SQL';
  FMiNewSql.OnClick := @NewSqlFromTreeClick;
  FTreeMenu.Items.Add(FMiNewSql);
  FMiEditStructure := TMenuItem.Create(FTreeMenu);
  FMiEditStructure.Caption := 'Editar estrutura';
  FMiEditStructure.OnClick := @EditStructureClick;
  FTreeMenu.Items.Add(FMiEditStructure);
  FTreeMenu.OnPopup := @TreeMenuPopup;
  FTree.PopupMenu := FTreeMenu;
  FTree.Font.Name := 'DejaVu Sans';
  FTree.Font.Size := 10;

  Splitter := TSplitter.Create(Self);
  Splitter.Parent := Self;
  Splitter.Align := alLeft;
  Splitter.Left := 290;
  Splitter.Width := 5;

  FTabs := TPageControl.Create(Self);
  FTabs.Parent := Self;
  FTabs.Align := alClient;
  FTabs.Left := 295;
  FTabs.Top := 32;

  FStatus := TStatusBar.Create(Self);
  FStatus.Parent := Self;
  FStatus.SimplePanel := True;
  FStatus.SimpleText := 'Pronto';

  NewSqlTab('');
end;

procedure TfrmMain.UpdateStatus;
begin
  if FSession.Connected then
  begin
    FStatus.SimpleText := Format('Conectado: %s | usuario %s | charset %s',
      [FSettings.Profile.DisplayName, FSettings.Profile.User, FSettings.Profile.Charset]);
    if FSession.ServerVersion <> '' then
      FStatus.SimpleText := FStatus.SimpleText + ' | Firebird ' + FSession.ServerVersion;
    FLblConn.Caption := 'conectado: ' + FSettings.Profile.Database;
    FLblConn.Font.Color := clGreen;
  end
  else
  begin
    FStatus.SimpleText := 'Desconectado';
    FLblConn.Caption := 'desconectado';
    FLblConn.Font.Color := clGray;
  end;
end;

procedure TfrmMain.ConnectClick(Sender: TObject);
var
  Dlg: TfrmConnect;
  P: TConnectionProfile;
begin
  Dlg := TfrmConnect.Create(Self);
  try
    { Preenche com a ultima conexao usada. }
    Dlg.SetInitialProfile(FSettings.Profile);
    if Dlg.ShowModal = mrOk then
    begin
      P := Dlg.Profile.Clone;
      try
        DoConnect(P);
      finally
        P.Free;
      end;
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.DoConnect(const AProfile: TConnectionProfile);
var
  I: Integer;
begin
  if FSession.Connected then
    FSession.Disconnect;
  try
    FSession.Connect(AProfile);
    FSettings.Profile.CopyFrom(AProfile);
    SaveSettings;
    PopulateTree;
    UpdateStatus;
    for I := 0 to FTabs.PageCount - 1 do
      if FTabs.Pages[I].ControlCount > 0 then
        TSqlTabFrame(FTabs.Pages[I].Controls[0]).SetProfile(FSettings.Profile);
  except
    on E: Exception do
    begin
      UpdateStatus;
      MessageDlg('Falha na conexao', DescribeException(E), mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmMain.DisconnectClick(Sender: TObject);
begin
  DoDisconnect;
end;

procedure TfrmMain.DoDisconnect;
begin
  FSession.Disconnect;
  PopulateTree;
  if FTabs.PageCount > 0 then
    FTabs.Pages[0].Caption := 'SQL';
  UpdateStatus;
end;

procedure TfrmMain.PopulateTree;
var
  Root, FolderNode: TTreeNode;
  MetaRoot, FolderMeta: TMetadataNode;
  Specs: TFolderSpecArray;
  I: Integer;
begin
  FTree.Items.BeginUpdate;
  try
    FreeTreeData;
    FTree.Items.Clear;
    if not FSession.Connected then
      Exit;

    MetaRoot := TMetadataNode.Create(mkFolder, FSettings.Profile.Database, '');
    Specs := FolderSpecs;
    for I := 0 to High(Specs) do
    begin
      FolderMeta := TMetadataNode.Create(mkFolder, Specs[I].Title, '');
      FolderMeta.FolderKind := Specs[I].Kind;
      MetaRoot.Children.Add(FolderMeta);
    end;

    Root := FTree.Items.Add(nil, FSettings.Profile.Database);
    Root.Data := MetaRoot;
    Root.HasChildren := True;

    for I := 0 to MetaRoot.Children.Count - 1 do
    begin
      FolderNode := FTree.Items.AddChild(Root, Specs[I].Title);
      FolderNode.Data := MetaRoot.Children[I];
      FolderNode.HasChildren := True;
    end;
    Root.Expand(False);
  finally
    FTree.Items.EndUpdate;
  end;
end;

procedure TfrmMain.FreeTreeData;
var
  I: Integer;
begin
  for I := 0 to FTree.Items.Count - 1 do
    if (FTree.Items[I].Level = 0) and Assigned(FTree.Items[I].Data) then
    begin
      TMetadataNode(FTree.Items[I].Data).Free;
      FTree.Items[I].Data := nil;
    end;
end;

procedure TfrmMain.FillTreeNode(ATreeItem: TTreeNode; AMeta: TMetadataNode);
var
  I: Integer;
  Child: TTreeNode;
  M: TMetadataNode;
begin
  for I := 0 to AMeta.Children.Count - 1 do
  begin
    M := AMeta.Children[I];
    if M.Detail <> '' then
      Child := FTree.Items.AddChild(ATreeItem, M.Name + '  :  ' + M.Detail)
    else
      Child := FTree.Items.AddChild(ATreeItem, M.Name);
    Child.Data := M;
    { Pastas sempre podem ser abertas; tabelas/views/procedures ganham o
      triangulo porque tem filhos sob demanda. }
    Child.HasChildren := M.Kind in [mkFolder, mkTable, mkView, mkProcedure];
  end;
end;

procedure TfrmMain.TreeExpanding(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
var
  Meta: TMetadataNode;
begin
  AllowChange := True;
  if not Assigned(Node.Data) then
    Exit;
  Meta := TMetadataNode(Node.Data);
  if Meta.Loaded then
    Exit;

  if not FSession.Connected then
  begin
    AllowChange := False;
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  try
    try
      if Meta.Kind = mkFolder then
        FSession.FillFolder(Meta)
      else
        FSession.LoadChildren(Meta);
      Node.DeleteChildren;
      FillTreeNode(Node, Meta);
    except
      on E: Exception do
      begin
        AllowChange := False;
        MessageDlg('Erro ao carregar', DescribeException(E), mtError, [mbOK], 0);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.TreeDblClick(Sender: TObject);
var
  Node: TTreeNode;
  Meta: TMetadataNode;
begin
  Node := FTree.Selected;
  if not Assigned(Node) or not Assigned(Node.Data) then
    Exit;
  Meta := TMetadataNode(Node.Data);
  case Meta.Kind of
    mkFolder:
      Node.Expand(False);
    mkTable, mkView:
      OpenDataTab(Meta.Name);
  end;
end;

procedure TfrmMain.TreeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Node: TTreeNode;
begin
  if Button <> mbRight then
    Exit;
  Node := FTree.GetNodeAt(X, Y);
  if Assigned(Node) then
    FTree.Selected := Node;
end;

procedure TfrmMain.TreeMenuPopup(Sender: TObject);
var
  Meta: TMetadataNode;
begin
  Meta := nil;
  if Assigned(FTree.Selected) and Assigned(FTree.Selected.Data) then
    Meta := TMetadataNode(FTree.Selected.Data);
  FMiOpenData.Enabled := Assigned(Meta) and
    ((Meta.Kind = mkTable) or (Meta.Kind = mkView));
  FMiEditStructure.Enabled := Assigned(Meta) and (Meta.Kind = mkTable);
end;

procedure TfrmMain.OpenDataClick(Sender: TObject);
var
  Meta: TMetadataNode;
begin
  if not Assigned(FTree.Selected) or not Assigned(FTree.Selected.Data) then
    Exit;
  Meta := TMetadataNode(FTree.Selected.Data);
  if (Meta.Kind = mkTable) or (Meta.Kind = mkView) then
    OpenDataTab(Meta.Name);
end;

procedure TfrmMain.NewSqlFromTreeClick(Sender: TObject);
begin
  NewSqlTab('');
end;

procedure TfrmMain.OpenDataTab(const ARelation: string);
var
  Tab: TSqlTabFrame;
begin
  if not FSession.Connected then
  begin
    MessageDlg('Conecte-se ao banco para ver os dados da tabela.',
      mtInformation, [mbOK], 0);
    Exit;
  end;
  Tab := NewSqlTab(
    Format('select first 100 * from %s', [QuoteIdentifier(ARelation)]),
    ARelation);
  Tab.ExecuteScript;
end;

function TfrmMain.ActiveTab: TSqlTabFrame;
var
  Sheet: TTabSheet;
begin
  Result := nil;
  Sheet := TTabSheet(FTabs.ActivePage);
  if Assigned(Sheet) and (Sheet.ControlCount > 0) then
    Result := TSqlTabFrame(Sheet.Controls[0]);
end;

function TfrmMain.NewSqlTab(const ASQL: string; const ATitle: string): TSqlTabFrame;
var
  Sheet: TTabSheet;
begin
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  if ATitle = '' then
    Sheet.Caption := 'SQL ' + IntToStr(FTabs.PageCount)
  else
    Sheet.Caption := Copy(ATitle, 1, 28);

  Result := TSqlTabFrame.Create(Sheet);
  Result.Parent := Sheet;
  Result.Align := alClient;
  Result.SetSession(FSession);
  if FSession.Connected then
    Result.SetProfile(FSettings.Profile);
  if ASQL <> '' then
    Result.SetSqlText(ASQL);
  FTabs.ActivePage := Sheet;
  Result.FocusEditor;
end;

procedure TfrmMain.NewTabClick(Sender: TObject);
begin
  NewSqlTab('');
end;

procedure TfrmMain.CloseTabClick(Sender: TObject);
var
  Sheet: TTabSheet;
begin
  Sheet := TTabSheet(FTabs.ActivePage);
  if Assigned(Sheet) and (FTabs.PageCount > 1) then
    Sheet.Free;
end;

procedure TfrmMain.RunClick(Sender: TObject);
var
  Tab: TSqlTabFrame;
begin
  Tab := ActiveTab;
  if Assigned(Tab) then
    Tab.ExecuteScript;
end;

procedure TfrmMain.CompleteClick(Sender: TObject);
var
  Tab: TSqlTabFrame;
begin
  Tab := ActiveTab;
  if Assigned(Tab) then
    Tab.ShowCompletion;
end;

procedure TfrmMain.MenuPreviewClick(Sender: TObject);
var
  Tab: TSqlTabFrame;
begin
  Tab := ActiveTab;
  if Assigned(Tab) then
    ShowSqlPreview('Prévia de SQL', Tab.SqlText);
end;

procedure TfrmMain.MenuExportCsvClick(Sender: TObject);
var
  Tab: TSqlTabFrame;
  Dlg: TSaveDialog;
  Opts, NewOpts: TCsvOptions;
  N: Integer;
begin
  Tab := ActiveTab;
  if not Assigned(Tab) then
    Exit;
  if Tab.ResultRowCount = 0 then
  begin
    MessageDlg('Nada para exportar',
      'Execute uma consulta antes de exportar o resultado.', mtInformation,
      [mbOK], 0);
    Exit;
  end;

  DefaultCsvOptions(Opts);
  if not CsvOptionsDialog(Opts, NewOpts) then
    Exit;

  Dlg := TSaveDialog.Create(Self);
  try
    Dlg.Filter := 'Arquivos CSV (*.csv)|*.csv';
    Dlg.DefaultExt := 'csv';
    if FSettings.LastDirectory <> '' then
      Dlg.InitialDir := FSettings.LastDirectory;
    if Dlg.Execute then
    begin
      N := Tab.ExportCsv(Dlg.FileName, NewOpts);
      FSettings.LastDirectory := ExtractFileDir(Dlg.FileName);
      FSettings.Save;
      FStatus.SimpleText := Format('%d linha(s) exportada(s) para %s',
        [N, Dlg.FileName]);
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.MenuImportCsvClick(Sender: TObject);
var
  Dlg: TfrmImportCsv;
begin
  if not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de importar.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  Dlg := TfrmImportCsv.Create(Self);
  try
    Dlg.SetSession(FSession);
    Dlg.ShowModal;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.MenuNewTableClick(Sender: TObject);
var
  Dlg: TfrmTableEditor;
  Model: TTableModel;
begin
  if not FSession.Connected then
  begin
    MessageDlg('Sem conexao', 'Conecte-se a um banco antes de criar tabelas.',
      mtInformation, [mbOK], 0);
    Exit;
  end;

  Dlg := TfrmTableEditor.Create(Self);
  try
    Dlg.Caption := 'Nova tabela';
    Dlg.SetSession(FSession);
    Model := Default(TTableModel);
    Dlg.SetModel(Model, True);
    if Dlg.ShowModal = mrOk then
      PopulateTree;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.EditStructureClick(Sender: TObject);
var
  Meta: TMetadataNode;
  Dlg: TfrmTableEditor;
  Model: TTableModel;
begin
  if not Assigned(FTree.Selected) or not Assigned(FTree.Selected.Data) then
    Exit;
  Meta := TMetadataNode(FTree.Selected.Data);
  if Meta.Kind <> mkTable then
    Exit;

  Dlg := TfrmTableEditor.Create(Self);
  try
    Dlg.Caption := 'Editar estrutura - ' + Meta.Name;
    Dlg.SetSession(FSession);
    Model := FSession.LoadTableModel(Meta.Name);
    Dlg.SetModel(Model, False);
    if Dlg.ShowModal = mrOk then
      PopulateTree;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.MenuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.MenuAboutClick(Sender: TObject);
begin
  ShowMessage('IBStudio' + LineEnding +
    'Cliente Firebird em Free Pascal / Lazarus.' + LineEnding +
    'Camada de dados: SQLdb + IBConnection.');
end;

end.
