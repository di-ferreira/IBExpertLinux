unit uMain;
{ Janela principal do IBStudio: arvore de metadados + abas SQL. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, ComCtrls, Menus,
  Graphics, Dialogs, IniFiles, LCLType,
  ibtypes, ibmetadata, ibsession, uConnect, uSqlTab;

type
  TfrmMain = class(TForm)
  private
    FSession: TIBStudioSession;
    FTree: TTreeView;
    FTabs: TPageControl;
    FStatus: TStatusBar;
    FProfile: TConnectionProfile;
    FLblConn: TLabel;
    FNewTabBtn: TButton;
    FCloseTabBtn: TButton;
    FConnectBtn: TButton;
    FDisconnectBtn: TButton;
    FRunBtn: TButton;
    procedure BuildUi;
    procedure ConnectClick(Sender: TObject);
    procedure DisconnectClick(Sender: TObject);
    procedure NewTabClick(Sender: TObject);
    procedure CloseTabClick(Sender: TObject);
    procedure RunClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
    procedure MenuAboutClick(Sender: TObject);
    procedure TreeExpanding(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
    procedure TreeDblClick(Sender: TObject);
    procedure DoConnect(const AProfile: TConnectionProfile);
    procedure DoDisconnect;
    procedure PopulateTree;
    procedure FreeTreeData;
    procedure FillTreeNode(ATreeItem: TTreeNode; AMeta: TMetadataNode);
    procedure UpdateStatus;
    function NewSqlTab(const ASQL: string): TSqlTabFrame;
    procedure LoadSettings;
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
  FProfile := TConnectionProfile.Create;
  BuildUi;
  LoadSettings;
  UpdateStatus;
end;

destructor TfrmMain.Destroy;
begin
  FSession.Free;
  FProfile.Free;
  inherited Destroy;
end;

function TfrmMain.SettingsFile: string;
begin
  Result := GetAppConfigFile(False);
end;

procedure TfrmMain.LoadSettings;
var
  Ini: TIniFile;
begin
  if not FileExists(SettingsFile) then
    Exit;
  Ini := TIniFile.Create(SettingsFile);
  try
    FProfile.Host := Ini.ReadString('ultima', 'host', FProfile.Host);
    FProfile.Port := Ini.ReadInteger('ultima', 'porta', FProfile.Port);
    FProfile.Database := Ini.ReadString('ultima', 'banco', FProfile.Database);
    FProfile.User := Ini.ReadString('ultima', 'usuario', FProfile.User);
    FProfile.Charset := Ini.ReadString('ultima', 'charset', FProfile.Charset);
    FProfile.Dialect := Ini.ReadInteger('ultima', 'dialeto', FProfile.Dialect);
  finally
    Ini.Free;
  end;
end;

procedure TfrmMain.SaveSettings;
var
  Ini: TIniFile;
begin
  ForceDirectories(ExtractFileDir(SettingsFile));
  Ini := TIniFile.Create(SettingsFile);
  try
    Ini.WriteString('ultima', 'host', FProfile.Host);
    Ini.WriteInteger('ultima', 'porta', FProfile.Port);
    Ini.WriteString('ultima', 'banco', FProfile.Database);
    Ini.WriteString('ultima', 'usuario', FProfile.User);
    Ini.WriteString('ultima', 'charset', FProfile.Charset);
    Ini.WriteInteger('ultima', 'dialeto', FProfile.Dialect);
  finally
    Ini.Free;
  end;
end;

procedure TfrmMain.BuildUi;
var
  TopPanel: TPanel;
  LeftPanel: TPanel;
  Splitter: TSplitter;
  Main: TMainMenu;
  MFile, MQuery, MHelp, Item: TMenuItem;
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
  Item.Caption := 'Fechar aba';
  Item.OnClick := @CloseTabClick;
  MQuery.Add(Item);

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
      [FProfile.DisplayName, FProfile.User, FProfile.Charset]);
    if FSession.ServerVersion <> '' then
      FStatus.SimpleText := FStatus.SimpleText + ' | Firebird ' + FSession.ServerVersion;
    FLblConn.Caption := 'conectado: ' + FProfile.Database;
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
    Dlg.SetInitialProfile(FProfile);
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
begin
  if FSession.Connected then
    FSession.Disconnect;
  try
    FSession.Connect(AProfile);
    FProfile.Free;
    FProfile := AProfile.Clone;
    SaveSettings;
    PopulateTree;
    UpdateStatus;
    if FTabs.PageCount > 0 then
      TSqlTabFrame(FTabs.Pages[0].Controls[0]).SetProfile(FProfile);
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

    MetaRoot := TMetadataNode.Create(mkFolder, FProfile.Database, '');
    Specs := FolderSpecs;
    for I := 0 to High(Specs) do
    begin
      FolderMeta := TMetadataNode.Create(Specs[I].Kind, Specs[I].Title, '');
      MetaRoot.Children.Add(FolderMeta);
    end;

    Root := FTree.Items.Add(nil, FProfile.Database);
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
    Child.HasChildren := M.Kind in [mkTable, mkView, mkProcedure];
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
    mkTable, mkView:
      NewSqlTab(Format('select first 100 * from %s', [Meta.Name]));
  end;
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

function TfrmMain.NewSqlTab(const ASQL: string): TSqlTabFrame;
var
  Sheet: TTabSheet;
begin
  Sheet := TTabSheet.Create(FTabs);
  Sheet.PageControl := FTabs;
  Sheet.Caption := 'SQL ' + IntToStr(FTabs.PageCount);

  Result := TSqlTabFrame.Create(Sheet);
  Result.Parent := Sheet;
  Result.Align := alClient;
  if FSession.Connected then
    Result.SetProfile(FProfile);
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
