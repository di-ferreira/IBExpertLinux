unit uConnect;
{ Dialogo de conexao Firebird, montado em codigo (sem .lfm). }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, Graphics, Dialogs,
  ibtypes, ibsession;

type
  TfrmConnect = class(TForm)
  private
    FEdHost: TEdit;
    FEdPort: TEdit;
    FEdDatabase: TEdit;
    FEdUser: TEdit;
    FEdPassword: TEdit;
    FCbCharset: TComboBox;
    FCbDialect: TComboBox;
    FLblStatus: TLabel;
    FBtnTest: TButton;
    FBtnCreate: TButton;
    FBtnOk: TButton;
    FBtnCancel: TButton;
    FProfile: TConnectionProfile;
    procedure BuildUi;
    procedure BtnTestClick(Sender: TObject);
    procedure BtnCreateClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    function CollectProfile: TConnectionProfile;
    procedure LoadFromProfile(const AProfile: TConnectionProfile);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetInitialProfile(const AProfile: TConnectionProfile);
    property Profile: TConnectionProfile read FProfile;
  end;

implementation

constructor TfrmConnect.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  FProfile := TConnectionProfile.Create;
  BuildUi;
end;

destructor TfrmConnect.Destroy;
begin
  FProfile.Free;
  inherited Destroy;
end;

procedure TfrmConnect.BuildUi;
const
  RowH = 30;
var
  Y: Integer;

  function AddLabel(const ACaption: string): TLabel;
  begin
    Result := TLabel.Create(Self);
    Result.Parent := Self;
    Result.Caption := ACaption;
    Result.Left := 12;
    Result.Top := Y + 4;
    Result.Width := 90;
  end;

  function AddEdit: TEdit;
  begin
    Result := TEdit.Create(Self);
    Result.Parent := Self;
    Result.Left := 108;
    Result.Top := Y;
    Result.Width := 330;
    Result.Anchors := [akLeft, akTop, akRight];
    Inc(Y, RowH);
  end;

begin
  Caption := 'Conectar ao Firebird';
  Width := 500;
  Height := 300;
  Position := poMainFormCenter;
  BorderStyle := bsDialog;
  KeyPreview := True;
  Y := 12;

  AddLabel('Servidor');
  FEdHost := AddEdit;
  FEdHost.Text := 'localhost';

  AddLabel('Porta');
  FEdPort := AddEdit;
  FEdPort.Text := '3050';
  FEdPort.Width := 80;
  FEdPort.Anchors := [akLeft, akTop];

  AddLabel('Banco (caminho/alias)');
  FEdDatabase := AddEdit;

  AddLabel('Usuario');
  FEdUser := AddEdit;
  FEdUser.Text := 'SYSDBA';

  AddLabel('Senha');
  FEdPassword := AddEdit;
  FEdPassword.PasswordChar := '*';

  AddLabel('Charset');
  FCbCharset := TComboBox.Create(Self);
  FCbCharset.Parent := Self;
  FCbCharset.Left := 108;
  FCbCharset.Top := Y;
  FCbCharset.Width := 120;
  FCbCharset.Items.Add('UTF8');
  FCbCharset.Items.Add('ISO8859_1');
  FCbCharset.Items.Add('WIN1252');
  FCbCharset.Items.Add('NONE');
  FCbCharset.ItemIndex := 0;
  Inc(Y, RowH);

  AddLabel('Dialeto');
  FCbDialect := TComboBox.Create(Self);
  FCbDialect.Parent := Self;
  FCbDialect.Left := 240;
  FCbDialect.Top := Y - RowH;
  FCbDialect.Width := 60;
  FCbDialect.Items.Add('1');
  FCbDialect.Items.Add('3');
  FCbDialect.ItemIndex := 1;

  FLblStatus := TLabel.Create(Self);
  FLblStatus.Parent := Self;
  FLblStatus.Left := 12;
  FLblStatus.Top := Y + 6;
  FLblStatus.Width := 426;
  FLblStatus.AutoSize := False;
  FLblStatus.Anchors := [akLeft, akTop, akRight];

  FBtnTest := TButton.Create(Self);
  FBtnTest.Parent := Self;
  FBtnTest.Caption := 'Testar';
  FBtnTest.Left := 108;
  FBtnTest.Top := Y + 32;
  FBtnTest.Width := 90;
  FBtnTest.OnClick := @BtnTestClick;

  FBtnCreate := TButton.Create(Self);
  FBtnCreate.Parent := Self;
  FBtnCreate.Caption := 'Criar banco';
  FBtnCreate.Left := 204;
  FBtnCreate.Top := Y + 32;
  FBtnCreate.Width := 96;
  FBtnCreate.OnClick := @BtnCreateClick;

  FBtnOk := TButton.Create(Self);
  FBtnOk.Parent := Self;
  FBtnOk.Caption := 'OK';
  FBtnOk.Left := 306;
  FBtnOk.Top := Y + 32;
  FBtnOk.Width := 90;
  FBtnOk.ModalResult := mrNone;
  FBtnOk.OnClick := @BtnOkClick;

  FBtnCancel := TButton.Create(Self);
  FBtnCancel.Parent := Self;
  FBtnCancel.Caption := 'Cancelar';
  FBtnCancel.Left := 398;
  FBtnCancel.Top := Y + 32;
  FBtnCancel.Width := 80;
  FBtnCancel.ModalResult := mrCancel;
  FBtnCancel.Cancel := True;

  Height := Y + 90;

  ActiveControl := FEdDatabase;
end;

function TfrmConnect.CollectProfile: TConnectionProfile;
begin
  Result := TConnectionProfile.Create;
  Result.Host := Trim(FEdHost.Text);
  Result.Port := StrToIntDef(Trim(FEdPort.Text), 3050);
  Result.Database := Trim(FEdDatabase.Text);
  Result.User := Trim(FEdUser.Text);
  Result.Password := FEdPassword.Text;
  Result.Charset := FCbCharset.Text;
  Result.Dialect := StrToIntDef(FCbDialect.Text, 3);
end;

procedure TfrmConnect.LoadFromProfile(const AProfile: TConnectionProfile);
begin
  if not Assigned(AProfile) then
    Exit;
  FEdHost.Text := AProfile.Host;
  FEdPort.Text := IntToStr(AProfile.Port);
  FEdDatabase.Text := AProfile.Database;
  FEdUser.Text := AProfile.User;
  FCbCharset.Text := AProfile.Charset;
  FCbDialect.Text := IntToStr(AProfile.Dialect);
end;

procedure TfrmConnect.SetInitialProfile(const AProfile: TConnectionProfile);
begin
  LoadFromProfile(AProfile);
end;

procedure TfrmConnect.BtnTestClick(Sender: TObject);
var
  P: TConnectionProfile;
  S: TIBStudioSession;
  Version: string;
begin
  if Trim(FEdDatabase.Text) = '' then
  begin
    FLblStatus.Font.Color := clRed;
    FLblStatus.Caption := 'Informe o banco (caminho ou alias).';
    Exit;
  end;

  FLblStatus.Font.Color := clWindowText;
  FLblStatus.Caption := 'Conectando...';
  Application.ProcessMessages;

  P := CollectProfile;
  S := TIBStudioSession.Create;
  try
    try
      S.Connect(P);
      Version := S.ServerVersion;
      FLblStatus.Font.Color := clGreen;
      if Version <> '' then
        FLblStatus.Caption := 'OK - Firebird ' + Version
      else
        FLblStatus.Caption := 'OK - conexao estabelecida';
    except
      on E: Exception do
      begin
        FLblStatus.Font.Color := clRed;
        FLblStatus.Caption := DescribeException(E);
      end;
    end;
  finally
    S.Free;
    P.Free;
  end;
end;

procedure TfrmConnect.BtnCreateClick(Sender: TObject);
var
  P: TConnectionProfile;
  S: TIBStudioSession;
begin
  if Trim(FEdDatabase.Text) = '' then
  begin
    FLblStatus.Font.Color := clRed;
    FLblStatus.Caption := 'Informe o caminho do banco a criar.';
    Exit;
  end;
  if MessageDlg('Criar banco', 'Criar o banco "' + Trim(FEdDatabase.Text) +
    '" neste servidor?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  FLblStatus.Font.Color := clWindowText;
  FLblStatus.Caption := 'Criando banco...';
  Application.ProcessMessages;

  P := CollectProfile;
  S := TIBStudioSession.Create;
  try
    try
      S.CreateDatabase(P);
      FLblStatus.Font.Color := clGreen;
      FLblStatus.Caption := 'Banco criado. Clique em Testar ou OK.';
    except
      on E: Exception do
      begin
        FLblStatus.Font.Color := clRed;
        FLblStatus.Caption := DescribeException(E);
      end;
    end;
  finally
    S.Free;
    P.Free;
  end;
end;

procedure TfrmConnect.BtnOkClick(Sender: TObject);
begin
  if Trim(FEdDatabase.Text) = '' then
  begin
    FLblStatus.Font.Color := clRed;
    FLblStatus.Caption := 'Informe o banco (caminho ou alias).';
    Exit;
  end;
  FProfile.Free;
  FProfile := CollectProfile;
  ModalResult := mrOk;
end;

end.
