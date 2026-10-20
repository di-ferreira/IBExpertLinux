unit ibsession;
{ Camada Firebird: conexao, execucao de comandos, materializacao de
  resultados e carga de metadados.

  Nao depende de LCL: pode ser usada tanto pela UI quanto por testes e por
  uma thread de trabalho (cada thread deve criar a sua propria instancia). }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, DB, sqldb, IBConnection, bufdataset, ibase60dyn,
  ibtypes, ibsqlutil, ibmetadata;

type
  TIBStudioSession = class;

  { Executa comandos em uma conexao propria, pensada para rodar em thread. }
  TIBExecutor = class
  private
    FProfile: TConnectionProfile;
    FConn: TIBConnection;
    FTx: TSQLTransaction;
    FMaxRows: Integer;
  public
    constructor Create(const AProfile: TConnectionProfile; AMaxRows: Integer = 5000);
    destructor Destroy; override;
    procedure Open;
    procedure Close;
    { Executa um comando. Quando devolve linhas, materializa em ADest. }
    function ExecuteOne(const AStatement: TStatement; ADest: TBufDataset): TExecOutcome;
    property Connection: TIBConnection read FConn;
  end;

  { Sessao de apoio da UI: metadados e consultas curtas. }
  TIBStudioSession = class
  private
    FProfile: TConnectionProfile;
    FConn: TIBConnection;
    FTx: TSQLTransaction;
    FRelationNames: TStringList;
    FRelationNamesLoaded: Boolean;
    FFieldCache: TStringList;
    function GetConnected: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AProfile: TConnectionProfile);
    procedure Disconnect;
    { Cria um banco novo no servidor. }
    procedure CreateDatabase(const AProfile: TConnectionProfile);
    function ServerVersion: string;
    procedure FillFolder(ANode: TMetadataNode);
    procedure LoadChildren(ANode: TMetadataNode);
    { Nomes de tabelas e views (cache por conexao; nao liberar). }
    function RelationNames: TStrings;
    { Campos de uma relacao, na ordem do catalogo (nao liberar). }
    function RelationFields(const ARelation: string): TStrings;
    { Descarta os caches; chamar depois de DDL que mude o catalogo. }
    procedure ClearMetadataCache;
    property Connected: Boolean read GetConnected;
    property Profile: TConnectionProfile read FProfile;
  end;

function DescribeException(E: Exception): string;

{ Carrega a biblioteca cliente do Firebird quando o FPC nao a encontra
  sozinho (no Linux os nomes variam entre 2.5 e 3.x). Honra IBSTUDIO_FBCLIENT. }
procedure EnsureClientLibrary;

{ Buffer de resultado. TBufDataset declara LoadBlobIntoBuffer como abstrato;
  como todo BLOB e convertido em texto antes de entrar no buffer, a carga de
  blob nunca acontece aqui. }
type
  TResultBuffer = class(TBufDataset)
  protected
    procedure LoadBlobIntoBuffer(FieldDef: TFieldDef; ABlobBuf: PBufBlobField); override;
  end;

{ Cria o dataset de destino com as colunas do resultado. }
procedure PrepareBuffer(AQuery: TSQLQuery; ABuffer: TBufDataset);

{ Copia as linhas do resultado para o buffer, respeitando AMaxRows. }
function CopyRows(AQuery: TSQLQuery; ABuffer: TBufDataset; AMaxRows: Integer): Int64;

implementation

function DescribeException(E: Exception): string;
begin
  Result := Trim(E.Message);
  if Result = '' then
    Result := E.ClassName;
end;

function LoadClient(const ALib: string): Boolean;
begin
  Result := False;
  try
    InitialiseIBase60(ALib);
    Result := IBaseLibraryHandle <> 0;
  except
    { Biblioteca inexistente ou incompativel: tenta a proxima. }
  end;
end;

procedure EnsureClientLibrary;
const
  Candidates: array[0..6] of string = (
    'libfbclient.so', 'libfbclient.so.2', 'libfbclient.so.2.5',
    'libfbclient.so.2.5.1', '/opt/firebird/lib/libfbclient.so',
    'fbclient.dll', 'gds32.dll');
var
  Lib: string;
  I: Integer;
begin
  if IBaseLibraryHandle <> 0 then
    Exit;
  Lib := GetEnvironmentVariable('IBSTUDIO_FBCLIENT');
  if (Lib <> '') and LoadClient(Lib) then
    Exit;
  for I := Low(Candidates) to High(Candidates) do
    if LoadClient(Candidates[I]) then
      Exit;
  { Sem sucesso: a mensagem padrao do FPC e mais informativa. }
end;

procedure TResultBuffer.LoadBlobIntoBuffer(FieldDef: TFieldDef; ABlobBuf: PBufBlobField);
begin
  { Inalcancavel na pratica: todo BLOB vira VARCHAR no buffer. }
  if ABlobBuf <> nil then
    ABlobBuf^.BlobBuffer := nil;
end;

procedure PrepareBuffer(AQuery: TSQLQuery; ABuffer: TBufDataset);
var
  I: Integer;
  Fld: TField;
  DT: TFieldType;
  Sz: Integer;
begin
  ABuffer.Close;
  ABuffer.FieldDefs.Clear;
  for I := 0 to AQuery.FieldCount - 1 do
  begin
    Fld := AQuery.Fields[I];
    DT := Fld.DataType;
    Sz := Fld.Size;
    case DT of
      ftBlob, ftMemo, ftWideMemo, ftGraphic, ftOraBlob:
        begin
          DT := ftString;
          Sz := 64;
        end;
      ftString, ftFixedChar, ftWideString, ftFixedWideChar:
        if Sz <= 0 then
          Sz := 255;
      ftBytes, ftVarBytes:
        begin
          DT := ftString;
          Sz := Sz * 2 + 2;
        end;
      ftUnknown:
        begin
          DT := ftString;
          Sz := 255;
        end;
    end;
    ABuffer.FieldDefs.Add(Fld.FieldName, DT, Sz, False);
  end;
  ABuffer.CreateDataset;
  ABuffer.Open;
end;

function CopyRows(AQuery: TSQLQuery; ABuffer: TBufDataset; AMaxRows: Integer): Int64;
var
  I: Integer;
  Src, Dst: TField;
begin
  Result := 0;
  while not AQuery.EOF do
  begin
    if (AMaxRows > 0) and (Result >= AMaxRows) then
      Break;
    ABuffer.Append;
    for I := 0 to AQuery.FieldCount - 1 do
    begin
      Src := AQuery.Fields[I];
      Dst := ABuffer.Fields[I];
      if Src.IsNull then
        Dst.Clear
      else
        case Src.DataType of
          ftBlob, ftMemo, ftWideMemo, ftGraphic, ftOraBlob:
            Dst.AsString := '(blob)';
          ftBytes, ftVarBytes:
            Dst.AsString := '(bytes)';
        else
          Dst.Value := Src.Value;
        end;
    end;
    ABuffer.Post;
    Inc(Result);
    AQuery.Next;
  end;
end;

{ TIBExecutor }

constructor TIBExecutor.Create(const AProfile: TConnectionProfile; AMaxRows: Integer);
begin
  inherited Create;
  FProfile := AProfile.Clone;
  FMaxRows := AMaxRows;
  FConn := TIBConnection.Create(nil);
  FTx := TSQLTransaction.Create(nil);
  FConn.Transaction := FTx;
  FTx.DataBase := FConn;
end;

destructor TIBExecutor.Destroy;
begin
  Close;
  FTx.Free;
  FConn.Free;
  FProfile.Free;
  inherited Destroy;
end;

procedure TIBExecutor.Open;
begin
  if FProfile.Host <> '' then
    FConn.DatabaseName := Format('%s/%d:%s', [FProfile.Host, FProfile.Port, FProfile.Database])
  else
    FConn.DatabaseName := FProfile.Database;
  FConn.UserName := FProfile.User;
  FConn.Password := FProfile.Password;
  FConn.CharSet := FProfile.Charset;
  FConn.Dialect := FProfile.Dialect;
  EnsureClientLibrary;
  FConn.Connected := True;
  FTx.StartTransaction;
end;

procedure TIBExecutor.Close;
begin
  if FConn.Connected then
  begin
    try
      if FTx.Active then
        FTx.Commit;
    except
      { Falha ao fechar nao deve mascarar o resultado principal. }
    end;
    FConn.Connected := False;
  end;
end;

function TIBExecutor.ExecuteOne(const AStatement: TStatement; ADest: TBufDataset): TExecOutcome;
var
  Q: TSQLQuery;
  Start: QWord;
begin
  Result := Default(TExecOutcome);
  Result.Statement := AStatement.SQL;
  Result.Kind := AStatement.Kind;
  Start := GetTickCount64;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text := AStatement.SQL;
    try
      if StatementReturnsRows(AStatement.Kind) then
      begin
        Q.Open;
        if Assigned(ADest) then
        begin
          PrepareBuffer(Q, ADest);
          Result.Rows := CopyRows(Q, ADest, FMaxRows);
        end
        else
        begin
          { TSQLQuery nao informa RecordCount de forma confiavel: conta as linhas. }
          Result.Rows := 0;
          while not Q.EOF do
          begin
            Q.Next;
            Inc(Result.Rows);
          end;
        end;
        Q.Close;
      end
      else
      begin
        Q.ExecSQL;
        Result.Affected := Q.RowsAffected;
      end;
      if FTx.Active then
        FTx.Commit;
      FTx.StartTransaction;
    except
      on E: Exception do
      begin
        Result.Error := DescribeException(E);
        try
          if FTx.Active then
            FTx.Rollback;
          FTx.StartTransaction;
        except
          { Mantem o erro original. }
        end;
      end;
    end;
  finally
    Q.Free;
  end;

  Result.ElapsedMs := Int64(GetTickCount64 - Start);
end;

{ TIBStudioSession }

constructor TIBStudioSession.Create;
begin
  inherited Create;
  FProfile := TConnectionProfile.Create;
  FConn := TIBConnection.Create(nil);
  FTx := TSQLTransaction.Create(nil);
  FConn.Transaction := FTx;
  FTx.DataBase := FConn;

  FRelationNames := TStringList.Create;
  FRelationNames.Sorted := True;
  FRelationNames.CaseSensitive := False;
  FRelationNames.Duplicates := dupIgnore;

  FFieldCache := TStringList.Create;
  FFieldCache.Sorted := True;
  FFieldCache.CaseSensitive := False;
end;

destructor TIBStudioSession.Destroy;
begin
  Disconnect;
  ClearMetadataCache;
  FFieldCache.Free;
  FRelationNames.Free;
  FTx.Free;
  FConn.Free;
  FProfile.Free;
  inherited Destroy;
end;

function TIBStudioSession.GetConnected: Boolean;
begin
  Result := FConn.Connected;
end;

procedure TIBStudioSession.Connect(const AProfile: TConnectionProfile);
begin
  Disconnect;
  FProfile.Free;
  FProfile := AProfile.Clone;

  if FProfile.Host <> '' then
    FConn.DatabaseName := Format('%s/%d:%s', [FProfile.Host, FProfile.Port, FProfile.Database])
  else
    FConn.DatabaseName := FProfile.Database;
  FConn.UserName := FProfile.User;
  FConn.Password := FProfile.Password;
  FConn.CharSet := FProfile.Charset;
  FConn.Dialect := FProfile.Dialect;
  EnsureClientLibrary;
  FConn.Connected := True;
  FTx.StartTransaction;
end;

procedure TIBStudioSession.Disconnect;
begin
  ClearMetadataCache;
  if not FConn.Connected then
    Exit;
  try
    if FTx.Active then
      FTx.Rollback;
  except
    { Ignora. }
  end;
  FConn.Connected := False;
end;

procedure TIBStudioSession.CreateDatabase(const AProfile: TConnectionProfile);
var
  Conn: TIBConnection;
  Tx: TSQLTransaction;
begin
  Conn := TIBConnection.Create(nil);
  Tx := TSQLTransaction.Create(nil);
  try
    try
      if AProfile.Host <> '' then
        Conn.DatabaseName := Format('%s/%d:%s',
          [AProfile.Host, AProfile.Port, AProfile.Database])
      else
        Conn.DatabaseName := AProfile.Database;
      Conn.UserName := AProfile.User;
      Conn.Password := AProfile.Password;
      Conn.CharSet := AProfile.Charset;
      Conn.Dialect := AProfile.Dialect;
      EnsureClientLibrary;
      Conn.Transaction := Tx;
      Tx.DataBase := Conn;
      Conn.CreateDB;
    finally
      Tx.Free;
      Conn.Free;
    end;
  except
    on E: Exception do
      raise Exception.Create(DescribeException(E));
  end;
end;

function TIBStudioSession.ServerVersion: string;
var
  Q: TSQLQuery;
begin
  Result := '';
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := 'select rdb$get_context(''SYSTEM'', ''ENGINE_VERSION'') as v from rdb$database';
      Q.Open;
      if not Q.EOF then
        Result := Q.Fields[0].AsString;
      Q.Close;
    except
      { Firebird 2.0 nao tem rdb$get_context. }
      Result := '';
    end;
  finally
    Q.Free;
  end;
end;

procedure TIBStudioSession.FillFolder(ANode: TMetadataNode);
var
  Q: TSQLQuery;
  SQL: string;
begin
  SQL := ListSQLFor(ANode.FolderKind);
  if SQL = '' then
    Exit;
  ANode.ClearChildren;
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text := SQL;
    Q.Open;
    while not Q.EOF do
    begin
      ANode.AddChild(ANode.FolderKind, Trim(Q.Fields[0].AsString),
        Trim(Q.Fields[1].AsString));
      Q.Next;
    end;
    Q.Close;
    ANode.Loaded := True;
  finally
    Q.Free;
  end;
end;

procedure TIBStudioSession.LoadChildren(ANode: TMetadataNode);
var
  Q: TSQLQuery;
  SQL: string;
  Detail: string;
begin
  SQL := ChildrenSQLFor(ANode.Kind);
  if SQL = '' then
  begin
    ANode.Loaded := True;
    Exit;
  end;

  ANode.ClearChildren;
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text := SQL;
    Q.ParamByName('name').AsString := ANode.Name;
    Q.Open;
    while not Q.EOF do
    begin
      case ANode.Kind of
        mkTable, mkView:
          Detail := DescribeColumn(
            Q.FieldByName('ftype').AsInteger,
            Q.FieldByName('fsubtype').AsInteger,
            Q.FieldByName('flen').AsInteger,
            Q.FieldByName('fprec').AsInteger,
            Q.FieldByName('fscale').AsInteger,
            Q.FieldByName('fnull').AsInteger = 0,
            Q.FieldByName('fbpc').AsInteger);
        mkProcedure:
          begin
            Detail := DescribeField(
              Q.FieldByName('ftype').AsInteger,
              Q.FieldByName('fsubtype').AsInteger,
              Q.FieldByName('flen').AsInteger,
              Q.FieldByName('fprec').AsInteger,
              Q.FieldByName('fscale').AsInteger,
              Q.FieldByName('fbpc').AsInteger);
            if Q.FieldByName('ptype').AsInteger = 1 then
              Detail := Detail + ' (saida)'
            else
              Detail := Detail + ' (entrada)';
          end;
      else
        Detail := '';
      end;
      ANode.AddChild(mkColumn, Trim(Q.FieldByName('name').AsString), Detail).IsLeaf := True;
      Q.Next;
    end;
    Q.Close;
    ANode.Loaded := True;
  finally
    Q.Free;
  end;
end;

procedure TIBStudioSession.ClearMetadataCache;
var
  I: Integer;
begin
  if Assigned(FFieldCache) then
  begin
    for I := 0 to FFieldCache.Count - 1 do
      FFieldCache.Objects[I].Free;
    FFieldCache.Clear;
  end;
  if Assigned(FRelationNames) then
    FRelationNames.Clear;
  FRelationNamesLoaded := False;
end;

function TIBStudioSession.RelationNames: TStrings;
var
  Q: TSQLQuery;
begin
  if not FRelationNamesLoaded then
  begin
    FRelationNames.Clear;
    if FConn.Connected then
    begin
      Q := TSQLQuery.Create(nil);
      try
        Q.DataBase := FConn;
        Q.Transaction := FTx;
        Q.SQL.Text :=
          'select trim(rdb$relation_name) as nome from rdb$relations ' +
          'where coalesce(rdb$system_flag, 0) = 0';
        Q.Open;
        while not Q.EOF do
        begin
          FRelationNames.Add(Trim(Q.Fields[0].AsString));
          Q.Next;
        end;
        Q.Close;
      finally
        Q.Free;
      end;
    end;
    FRelationNamesLoaded := True;
  end;
  Result := FRelationNames;
end;

function TIBStudioSession.RelationFields(const ARelation: string): TStrings;
var
  Q: TSQLQuery;
  List: TStringList;
  Idx: Integer;
  Rel: string;
begin
  Result := nil;
  if (ARelation = '') or not FConn.Connected then
    Exit;

  { O SQL pode citar o nome em outra caixa; usa o nome exato do catalogo. }
  Rel := ARelation;
  Idx := RelationNames.IndexOf(ARelation);
  if Idx >= 0 then
    Rel := FRelationNames[Idx];

  Idx := FFieldCache.IndexOf(Rel);
  if Idx >= 0 then
    Exit(TStrings(FFieldCache.Objects[Idx]));

  List := TStringList.Create;
  try
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text :=
        'select trim(rf.rdb$field_name) as nome from rdb$relation_fields rf ' +
        'where coalesce(rf.rdb$system_flag, 0) = 0 ' +
        'and rf.rdb$relation_name = :rel order by rf.rdb$field_position';
      Q.ParamByName('rel').AsString := Rel;
      Q.Open;
      while not Q.EOF do
      begin
        List.Add(Trim(Q.Fields[0].AsString));
        Q.Next;
      end;
      Q.Close;
    finally
      Q.Free;
    end;
  except
    List.Free;
    raise;
  end;

  FFieldCache.AddObject(Rel, List);
  Result := List;
end;

end.
