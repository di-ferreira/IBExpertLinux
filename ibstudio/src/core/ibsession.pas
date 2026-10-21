unit ibsession;
{ Camada Firebird: conexao, execucao de comandos, materializacao de
  resultados e carga de metadados.

  Nao depende de LCL: pode ser usada tanto pela UI quanto por testes e por
  uma thread de trabalho (cada thread deve criar a sua propria instancia). }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, DB, sqldb, IBConnection, bufdataset, ibase60dyn,
  ibtypes, ibsqlutil, ibmetadata, ibddl, ibcode, ibschema, ibsecurity;

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
    { Executa DML/DDL com parametros nomeados. ACommit=False deixa a
      transacao aberta para Commit/Rollback posteriores. }
    function ExecuteParams(const ASQL: string; AParams: TParams;
      ACommit: Boolean = True): Int64;
    procedure Commit;
    procedure Rollback;
    property Connection: TIBConnection read FConn;
    property Transaction: TSQLTransaction read FTx;
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
    FDescriptionCache: TStringList;
    function GetConnected: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AProfile: TConnectionProfile);
    procedure Disconnect;
    { Cria um banco novo no servidor. }
    procedure CreateDatabase(const AProfile: TConnectionProfile);
    function ServerVersion: string;
    { Executa um comando curto na conexao da UI. }
    function Execute(const ASQL: string; AParams: TParams = nil;
      ACommit: Boolean = True): Int64;
    { Executa varios comandos; em caso de erro, desfaz e devolve a mensagem. }
    function ExecuteScript(const AScript: string; out AError: string;
      ACommit: Boolean = True): Boolean;
    procedure Commit;
    procedure Rollback;
    procedure FillFolder(ANode: TMetadataNode);
    procedure LoadChildren(ANode: TMetadataNode);
    { Nomes de tabelas e views (cache por conexao; nao liberar). }
    function RelationNames: TStrings;
    { Campos de uma relacao, na ordem do catalogo (nao liberar). }
    function RelationFields(const ARelation: string): TStrings;
    { Nome exato da relacao no catalogo (grafia correta). }
    function ResolveRelationName(const AName: string): string;
    { Colunas da chave primaria (nova lista: liberar pelo chamador). }
    function PrimaryKeyColumns(const ARelation: string): TStrings;
    { Metadados dos campos de uma relacao (nova lista: liberar pelo chamador). }
    function RelationFieldMetas(const ARelation: string): TFieldMetaArray;
    { Modelo completo da tabela (campos, chave, indices e FKs). }
    function LoadTableModel(const ARelation: string): TTableModel;
    { Objeto de codigo lido do catalogo (procedure, trigger, view...). }
    function LoadCodeObject(AKind: TCodeKind; const AName: string): TCodeObject;
    { Descricao de um campo (ou da tabela, quando AColumn e vazio). }
    function DescriptionOf(const ATable, AColumn: string): string;
    { Parametros de uma procedure, na ordem do catalogo. }
    function ProcedureParameters(const AName: string): TStringArray;
    { Esquema completo do banco, para extracao e comparacao. }
    function LoadSchemaModel: TSchemaModel;
    { Usuarios e papeis do servidor (liberar a lista). }
    function ListUsers: TStringList;
    function ListRoles: TStringList;
    { Privilegios de um objeto (linhas "usuario:objeto:privilegios"). }
    function ListObjectPrivileges(const AObjectName: string): TStringList;
    { Sessoes ativas (mon$attachments). }
    function ActiveSessions: TStringList;
    { Executa um unico comando, sem dividir o texto em varios. }
    function ExecuteStatement(const ASQL: string; out AError: string): Boolean;
    { Descarta os caches; chamar depois de DDL que mude o catalogo. }
    procedure ClearMetadataCache;
    property Connected: Boolean read GetConnected;
    property Profile: TConnectionProfile read FProfile;
    property Connection: TIBConnection read FConn;
    property Transaction: TSQLTransaction read FTx;
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

{ SQL dos campos de uma tabela. A origem computada fica em rdb$fields no
  Firebird 2.5 e em rdb$relation_fields no 3.0 em diante. }
function FieldsSQL(const AComputedExpr: string): string;
begin
  Result :=
    'select trim(rf.rdb$field_name) as nome, ' +
    'cast(f.rdb$field_type as integer) as ftype, ' +
    'cast(coalesce(f.rdb$field_sub_type, 0) as integer) as fsubtype, ' +
    'cast(f.rdb$field_length as integer) as flen, ' +
    'cast(coalesce(f.rdb$field_precision, 0) as integer) as fprec, ' +
    'cast(coalesce(f.rdb$field_scale, 0) as integer) as fscale, ' +
    'cast(coalesce(rf.rdb$null_flag, 0) as integer) as fnull, ' +
    'cast(coalesce(f.rdb$default_source, '''') as varchar(255)) as defsrc, ' +
    'cast(coalesce(' + AComputedExpr + ', '''') as varchar(255)) as compsrc, ' +
    'cast(coalesce(f.rdb$description, '''') as varchar(255)) as descr, ' +
    'cast(coalesce(cs.rdb$bytes_per_character, 1) as integer) as fbpc ' +
    'from rdb$relation_fields rf ' +
    'join rdb$fields f on f.rdb$field_name = rf.rdb$field_source ' +
    'left join rdb$character_sets cs ' +
    '  on cs.rdb$character_set_id = f.rdb$character_set_id ' +
    'where rf.rdb$relation_name = :rel ' +
    'order by rf.rdb$field_position';
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

{ Executa um comando com parametros nomeados em uma conexao/transacao.
  Em erro, desfaz a transacao corrente e repassa a mensagem do servidor. }
function RunParams(AConn: TIBConnection; ATx: TSQLTransaction;
  const ASQL: string; AParams: TParams; ACommit: Boolean): Int64;
var
  Q: TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := AConn;
    Q.Transaction := ATx;
    Q.SQL.Text := ASQL;
    if Assigned(AParams) then
      Q.Params.Assign(AParams);
    try
      Q.ExecSQL;
      Result := Q.RowsAffected;
      if ACommit and ATx.Active then
      begin
        ATx.Commit;
        ATx.StartTransaction;
      end;
    except
      on E: Exception do
      begin
        try
          if ATx.Active then
            ATx.Rollback;
          ATx.StartTransaction;
        except
          { Mantem o erro original. }
        end;
        raise Exception.Create(DescribeException(E));
      end;
    end;
  finally
    Q.Free;
  end;
end;

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

function TIBExecutor.ExecuteParams(const ASQL: string; AParams: TParams;
  ACommit: Boolean): Int64;
begin
  Result := RunParams(FConn, FTx, ASQL, AParams, ACommit);
end;

procedure TIBExecutor.Commit;
begin
  if FTx.Active then
    FTx.Commit;
  FTx.StartTransaction;
end;

procedure TIBExecutor.Rollback;
begin
  if FTx.Active then
    FTx.Rollback;
  FTx.StartTransaction;
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

  FDescriptionCache := TStringList.Create;
  FDescriptionCache.NameValueSeparator := #1;
end;

destructor TIBStudioSession.Destroy;
begin
  Disconnect;
  ClearMetadataCache;
  FFieldCache.Free;
  FDescriptionCache.Free;
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

function TIBStudioSession.Execute(const ASQL: string; AParams: TParams;
  ACommit: Boolean): Int64;
begin
  Result := RunParams(FConn, FTx, ASQL, AParams, ACommit);
end;

procedure TIBStudioSession.Commit;
begin
  if FTx.Active then
    FTx.Commit;
  FTx.StartTransaction;
end;

function TIBStudioSession.ExecuteScript(const AScript: string; out AError: string;
  ACommit: Boolean): Boolean;
var
  Stmts: TStatementArray;
  I: Integer;
begin
  AError := '';
  Result := False;

  Stmts := SplitStatements(AScript);
  if Length(Stmts) = 0 then
  begin
    AError := 'Nenhum comando para executar.';
    Exit;
  end;

  try
    for I := 0 to High(Stmts) do
      RunParams(FConn, FTx, Stmts[I].SQL, nil, False);
    if ACommit then
      Commit;
    Result := True;
  except
    on E: Exception do
    begin
      AError := DescribeException(E);
      try
        if FTx.Active then
          FTx.Rollback;
        FTx.StartTransaction;
      except
        { Mantem a mensagem original. }
      end;
    end;
  end;
end;

procedure TIBStudioSession.Rollback;
begin
  if FTx.Active then
    FTx.Rollback;
  FTx.StartTransaction;
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
  if Assigned(FDescriptionCache) then
    FDescriptionCache.Clear;
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

function TIBStudioSession.ResolveRelationName(const AName: string): string;
var
  Idx: Integer;
begin
  Result := '';
  if Trim(AName) = '' then
    Exit;
  Idx := RelationNames.IndexOf(Trim(AName));
  if Idx >= 0 then
    Result := FRelationNames[Idx]
  else
    Result := Trim(AName);
end;

function TIBStudioSession.PrimaryKeyColumns(const ARelation: string): TStrings;
var
  Q: TSQLQuery;
  List: TStringList;
  Rel: string;
begin
  Result := nil;
  if (ARelation = '') or not FConn.Connected then
    Exit;

  Rel := ResolveRelationName(ARelation);
  List := TStringList.Create;
  try
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text :=
        'select trim(seg.rdb$field_name) as nome ' +
        'from rdb$relation_constraints rc ' +
        'join rdb$indices idx on idx.rdb$index_name = rc.rdb$index_name ' +
        'join rdb$index_segments seg on seg.rdb$index_name = idx.rdb$index_name ' +
        'where rc.rdb$constraint_type = ''PRIMARY KEY'' ' +
        'and rc.rdb$relation_name = :rel ' +
        'order by seg.rdb$field_position';
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

  Result := List;
end;

function TIBStudioSession.LoadTableModel(const ARelation: string): TTableModel;
var
  Q: TSQLQuery;
  Rel: string;
  I, J, Count, IdxCount, FkCount: Integer;
  PkPos: Integer;
  Field: TFieldDefModel;
  Idx: TIndexModel;
  Fk: TFkModel;
  IndexMap: TStringList;
  PkIndex: string;
  FkNames: TStringList;
  Fields: TStringList;
  S: string;
  Bpc: Integer;

  function IndexOfField(const AFields: TFieldDefArray;
    const AName: string): Integer;
  var
    K: Integer;
  begin
    for K := 0 to High(AFields) do
      if SameText(AFields[K].Name, AName) then
        Exit(K);
    Result := -1;
  end;

begin
  Result.Name := ARelation;
  Result.Description := '';
  Result.Fields := nil;
  Result.Indexes := nil;
  Result.ForeignKeys := nil;
  if (ARelation = '') or not FConn.Connected then
    Exit;

  Rel := ResolveRelationName(ARelation);
  Result.Name := Rel;

  { Campos. A coluna de origem computada mudou de lugar entre o Firebird
    2.5 (rdb$fields) e o 3.0 (rdb$relation_fields): tenta as duas. }
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := FieldsSQL('rf.rdb$computed_source');
      Q.ParamByName('rel').AsString := Rel;
      Q.Open;
    except
      Q.SQL.Text := FieldsSQL('f.rdb$computed_source');
      Q.ParamByName('rel').AsString := Rel;
      Q.Open;
    end;
    Count := 0;
    while not Q.EOF do
    begin
      Field := Default(TFieldDefModel);
      Field.Name := Trim(Q.FieldByName('nome').AsString);
      Field.SubType := Q.FieldByName('fsubtype').AsInteger;
      Field.TypeName := BaseTypeName(Q.FieldByName('ftype').AsInteger, Field.SubType);
      Field.NotNull := Q.FieldByName('fnull').AsInteger <> 0;
      Field.DefaultValue := Trim(Q.FieldByName('defsrc').AsString);
      Field.ComputedSource := Trim(Q.FieldByName('compsrc').AsString);
      Field.Computed := Field.ComputedSource <> '';
      Field.Description := Trim(Q.FieldByName('descr').AsString);
      Bpc := Q.FieldByName('fbpc').AsInteger;
      if Bpc < 1 then
        Bpc := 1;
      if (Field.TypeName = 'VARCHAR') or (Field.TypeName = 'CHAR') then
        Field.Length := Q.FieldByName('flen').AsInteger div Bpc
      else if (Field.TypeName = 'NUMERIC') or (Field.TypeName = 'DECIMAL') then
      begin
        Field.Length := Q.FieldByName('fprec').AsInteger;
        { No catalogo a escala vem negativa quando o numero tem casas
          decimais. }
        Field.Scale := Abs(Q.FieldByName('fscale').AsInteger);
      end
      else if Field.TypeName = 'FLOAT' then
        Field.Length := Q.FieldByName('fprec').AsInteger;

      Inc(Count);
      SetLength(Result.Fields, Count);
      Result.Fields[Count - 1] := Field;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;

  { Chave primaria: posicao de cada coluna. }
  PkIndex := '';
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text :=
      'select trim(seg.rdb$field_name) as nome, ' +
      'cast(seg.rdb$field_position as integer) as spos, ' +
      'trim(idx.rdb$index_name) as iname ' +
      'from rdb$relation_constraints rc ' +
      'join rdb$indices idx on idx.rdb$index_name = rc.rdb$index_name ' +
      'join rdb$index_segments seg on seg.rdb$index_name = idx.rdb$index_name ' +
      'where rc.rdb$constraint_type = ''PRIMARY KEY'' ' +
      'and rc.rdb$relation_name = :rel ' +
      'order by seg.rdb$field_position';
    Q.ParamByName('rel').AsString := Rel;
    Q.Open;
    PkPos := 0;
    while not Q.EOF do
    begin
      I := IndexOfField(Result.Fields, Trim(Q.FieldByName('nome').AsString));
      if I >= 0 then
      begin
        { A posicao gravada no catalogo comeca em 0 no Firebird 2.5 e em 1
          no 3.0: usa a ordem do resultado. }
        Inc(PkPos);
        Result.Fields[I].PrimaryKeyPos := PkPos;
      end;
      PkIndex := Trim(Q.FieldByName('iname').AsString);
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;

  { Indices (sem o indice da chave primaria). }
  IndexMap := TStringList.Create;
  try
    IndexMap.Sorted := True;
    IndexMap.Duplicates := dupIgnore;
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text :=
        'select trim(idx.rdb$index_name) as iname, ' +
        'cast(coalesce(idx.rdb$unique_flag, 0) as integer) as uniq, ' +
        'trim(seg.rdb$field_name) as fname, ' +
        'cast(seg.rdb$field_position as integer) as spos ' +
        'from rdb$indices idx ' +
        'join rdb$index_segments seg on seg.rdb$index_name = idx.rdb$index_name ' +
        'where idx.rdb$relation_name = :rel ' +
        'and coalesce(idx.rdb$system_flag, 0) = 0 ' +
        'order by idx.rdb$index_name, seg.rdb$field_position';
      Q.ParamByName('rel').AsString := Rel;
      Q.Open;
      IdxCount := 0;
      while not Q.EOF do
      begin
        S := Trim(Q.FieldByName('iname').AsString);
        if (S <> '') and (not SameText(S, PkIndex)) then
        begin
          I := IndexMap.IndexOf(S);
          if I < 0 then
          begin
            Idx := Default(TIndexModel);
            Idx.Name := S;
            Idx.Unique := Q.FieldByName('uniq').AsInteger <> 0;
            Idx.Fields := nil;
            Inc(IdxCount);
            SetLength(Result.Indexes, IdxCount);
            Result.Indexes[IdxCount - 1] := Idx;
            IndexMap.Add(S);
            I := IdxCount - 1;
          end;
          SetLength(Result.Indexes[I].Fields,
            Length(Result.Indexes[I].Fields) + 1);
          Result.Indexes[I].Fields[High(Result.Indexes[I].Fields)] :=
            Trim(Q.FieldByName('fname').AsString);
        end;
        Q.Next;
      end;
      Q.Close;
    finally
      Q.Free;
    end;
  finally
    IndexMap.Free;
  end;

  { Chaves estrangeiras. }
  FkNames := TStringList.Create;
  try
    FkNames.Sorted := True;
    FkNames.Duplicates := dupIgnore;
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text :=
        'select trim(rc.rdb$constraint_name) as cname, ' +
        'trim(ref_con.rdb$relation_name) as reftab, ' +
        'cast(coalesce(rc.rdb$update_rule, 0) as integer) as updrule, ' +
        'cast(coalesce(rc.rdb$delete_rule, 0) as integer) as delrule ' +
        'from rdb$ref_constraints rc ' +
        'join rdb$relation_constraints fk_con ' +
        '  on fk_con.rdb$constraint_name = rc.rdb$constraint_name ' +
        'join rdb$relation_constraints ref_con ' +
        '  on ref_con.rdb$index_name = rc.rdb$const_name_uq ' +
        'where fk_con.rdb$relation_name = :rel ' +
        'order by rc.rdb$constraint_name';
      Q.ParamByName('rel').AsString := Rel;
      Q.Open;
      FkCount := 0;
      while not Q.EOF do
      begin
        Fk := Default(TFkModel);
        Fk.Name := Trim(Q.FieldByName('cname').AsString);
        Fk.RefTable := Trim(Q.FieldByName('reftab').AsString);
        Fk.OnUpdate := RefRuleName(Q.FieldByName('updrule').AsInteger);
        Fk.OnDelete := RefRuleName(Q.FieldByName('delrule').AsInteger);
        Fk.Fields := nil;
        Fk.RefFields := nil;
        Inc(FkCount);
        SetLength(Result.ForeignKeys, FkCount);
        Result.ForeignKeys[FkCount - 1] := Fk;
        FkNames.Add(Fk.Name);
        Q.Next;
      end;
      Q.Close;
    finally
      Q.Free;
    end;

    { Colunas de cada chave estrangeira. }
    if FkCount > 0 then
    begin
      Q := TSQLQuery.Create(nil);
      try
        Q.DataBase := FConn;
        Q.Transaction := FTx;
        Q.SQL.Text :=
          'select trim(rc.rdb$constraint_name) as cname, ' +
          'trim(src_seg.rdb$field_name) as srcfield, ' +
          'trim(ref_seg.rdb$field_name) as reffield ' +
          'from rdb$ref_constraints rc ' +
          'join rdb$relation_constraints fk_con ' +
          '  on fk_con.rdb$constraint_name = rc.rdb$constraint_name ' +
          'join rdb$index_segments src_seg ' +
          '  on src_seg.rdb$index_name = fk_con.rdb$index_name ' +
          'join rdb$index_segments ref_seg ' +
          '  on ref_seg.rdb$index_name = rc.rdb$const_name_uq ' +
          'where rc.rdb$constraint_name = :cname ' +
          'order by src_seg.rdb$field_position';
        Q.Open;
        while not Q.EOF do
        begin
          S := Trim(Q.FieldByName('cname').AsString);
          I := FkNames.IndexOf(S);
          if I >= 0 then
          begin
            SetLength(Result.ForeignKeys[I].Fields,
              Length(Result.ForeignKeys[I].Fields) + 1);
            Result.ForeignKeys[I].Fields[High(Result.ForeignKeys[I].Fields)] :=
              Trim(Q.FieldByName('srcfield').AsString);
            SetLength(Result.ForeignKeys[I].RefFields,
              Length(Result.ForeignKeys[I].RefFields) + 1);
            Result.ForeignKeys[I].RefFields[High(Result.ForeignKeys[I].RefFields)] :=
              Trim(Q.FieldByName('reffield').AsString);
          end;
          Q.Next;
        end;
        Q.Close;
      finally
        Q.Free;
      end;
    end;
  finally
    FkNames.Free;
  end;
end;

function TIBStudioSession.LoadCodeObject(AKind: TCodeKind;
  const AName: string): TCodeObject;
var
  Q: TSQLQuery;
  SQL, Cols, S: string;
  Found: Boolean;

  { Le a coluna "src" do comando; devolve False quando a coluna nao existe
    nesta versao do Firebird. }
  function TryRead(const ASQL: string; out AFound: Boolean): string;
  var
    Q2: TSQLQuery;
  begin
    AFound := False;
    Result := '';
    Q2 := TSQLQuery.Create(nil);
    try
      Q2.DataBase := FConn;
      Q2.Transaction := FTx;
      Q2.SQL.Text := ASQL;
      Q2.ParamByName('name').AsString := AName;
      Q2.Open;
      if not Q2.EOF then
      begin
        AFound := True;
        Result := Q2.FieldByName('src').AsString;
      end;
      Q2.Close;
    finally
      Q2.Free;
    end;
  end;

begin
  Result.Kind := AKind;
  Result.Name := AName;
  Result.Source := '';
  Result.Prefix := '';
  Result.Exists := False;
  Result.SourceAvailable := True;
  if (AName = '') or not FConn.Connected then
    Exit;

  case AKind of
    ckProcedure:
      begin
        { O texto da procedure ficou em rdb$source no Firebird 3.0 e em
          rdb$procedure_source no 2.5. }
        try
          Result.Source := TryRead('select rdb$source as src from ' +
            'rdb$procedures where rdb$procedure_name = :name', Found);
        except
          Found := False;
        end;
        if not Found then
          try
            Result.Source := TryRead('select rdb$procedure_source as src ' +
              'from rdb$procedures where rdb$procedure_name = :name', Found);
          except
            Found := False;
          end;
        Result.Exists := Found;
      end;

    ckTrigger:
      begin
        try
          Result.Source := TryRead('select rdb$trigger_source as src, ' +
            'trim(rdb$relation_name) as tab from rdb$triggers ' +
            'where rdb$trigger_name = :name', Found);
        except
          Found := False;
        end;
        Result.Exists := Found;
        { O trigger precisa da tabela onde esta instalado. }
        if Found then
        begin
          Q := TSQLQuery.Create(nil);
          try
            Q.DataBase := FConn;
            Q.Transaction := FTx;
            Q.SQL.Text := 'select trim(rdb$relation_name) as tab, ' +
              'cast(rdb$trigger_type as integer) as ttype from rdb$triggers ' +
              'where rdb$trigger_name = :name';
            Q.ParamByName('name').AsString := AName;
            Q.Open;
            if not Q.EOF then
              Result.Prefix := 'for ' + Q.FieldByName('tab').AsString + ' ' +
                TriggerEventSQL(Q.FieldByName('ttype').AsInteger) + ' ';
            Q.Close;
          finally
            Q.Free;
          end;
        end;
      end;

    ckView:
      begin
        { O Firebird 2.5 nao guarda o texto da view. }
        try
          Result.Source := TryRead('select rdb$view_source as src from ' +
            'rdb$views where rdb$view_name = :name', Found);
        except
          Found := False;
        end;
        Result.Exists := Found;
        Result.SourceAvailable := Found;
      end;

    ckDomain:
      begin
        { No 2.5 o dominio e um campo de rdb$fields sem origem. }
        try
          Result.Source := TryRead('select cast(rdb$src as blob sub_type ' +
            'text) as src from rdb$types where rdb$type_name = :name', Found);
        except
          Found := False;
        end;
        if not Found then
        begin
          Q := TSQLQuery.Create(nil);
          try
            Q.DataBase := FConn;
            Q.Transaction := FTx;
            Q.SQL.Text :=
              'select cast(rdb$field_type as integer) as ftype, ' +
              'cast(coalesce(rdb$field_sub_type, 0) as integer) as fsubtype, ' +
              'cast(rdb$field_length as integer) as flen, ' +
              'cast(coalesce(rdb$field_precision, 0) as integer) as fprec, ' +
              'cast(coalesce(rdb$field_scale, 0) as integer) as fscale ' +
              'from rdb$fields where rdb$field_name = :name';
            Q.ParamByName('name').AsString := AName;
            Q.Open;
            if not Q.EOF then
            begin
              Found := True;
              Result.Source := LowerCase(DescribeField(
                Q.FieldByName('ftype').AsInteger,
                Q.FieldByName('fsubtype').AsInteger,
                Q.FieldByName('flen').AsInteger,
                Q.FieldByName('fprec').AsInteger,
                Q.FieldByName('fscale').AsInteger));
            end;
            Q.Close;
          finally
            Q.Free;
          end;
        end;
        Result.Exists := Found;
      end;

    ckException:
      begin
        { A coluna da mensagem mudou de nome no Firebird 3.0. }
        try
          Result.Source := TryRead('select cast(rdb$exception_message as ' +
            'varchar(255)) as src from rdb$exceptions ' +
            'where rdb$exception_name = :name', Found);
        except
          Found := False;
        end;
        if not Found then
          try
            Result.Source := TryRead('select cast(rdb$message as ' +
              'varchar(255)) as src from rdb$exceptions ' +
              'where rdb$exception_name = :name', Found);
          except
            Found := False;
          end;
        Result.Exists := Found;
      end;

    ckGenerator:
      begin
        try
          Result.Source := TryRead('select gen_id(rdb$generator_name, 0) ' +
            'as src from rdb$generators where rdb$generator_name = :name',
            Found);
        except
          Found := False;
        end;
        Result.Exists := Found;
      end;

    ckNoObject:
      Exit;
  end;

  { A view precisa da lista de colunas para nao renomear as colunas. }
  if (AKind = ckView) and Result.Exists then
  begin
    Cols := '';
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text := 'select trim(rdb$field_name) as nome from rdb$view_columns ' +
        'where rdb$view_name = :name order by rdb$field_position';
      Q.ParamByName('name').AsString := AName;
      Q.Open;
      while not Q.EOF do
      begin
        if Cols <> '' then
          Cols := Cols + ', ';
        Cols := Cols + QuoteIdentifier(Q.FieldByName('nome').AsString);
        Q.Next;
      end;
      Q.Close;
    finally
      Q.Free;
    end;
    if Cols <> '' then
      Result.Prefix := '(' + Cols + ') ';
  end;
end;

function AddSep(const AValue: string): string;
begin
  if AValue = '' then
    Exit('');
  Result := ', ';
end;

function TIBStudioSession.DescriptionOf(const ATable, AColumn: string): string;
var
  Q: TSQLQuery;
  Key: string;
  Value: string;
  Position: Integer;
begin
  Result := '';
  if (ATable = '') or not FConn.Connected then
    Exit;

  if AColumn = '' then
    Key := 'T:' + UpperCase(ATable)
  else
    Key := 'C:' + UpperCase(ATable) + '.' + UpperCase(AColumn);

  Position := FDescriptionCache.IndexOf(Key);
  if Position >= 0 then
  begin
    Result := FDescriptionCache.ValueFromIndex[Position];
    Exit;
  end;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    if AColumn = '' then
    begin
      Q.SQL.Text := 'select cast(coalesce(rdb$description, '''') as ' +
        'varchar(255)) as descr from rdb$relations ' +
        'where rdb$relation_name = :name';
      Q.ParamByName('name').AsString := ResolveRelationName(ATable);
      Q.Open;
    end
    else
    begin
      { No Firebird 2.5 a descricao da coluna esta em rdb$relation_fields;
        no 3.0 ela foi para rdb$fields. }
      try
        Q.SQL.Text := 'select cast(coalesce(rf.rdb$description, '''') as ' +
          'varchar(255)) as descr from rdb$relation_fields rf ' +
          'where rf.rdb$relation_name = :name and rf.rdb$field_name = :field';
        Q.ParamByName('name').AsString := ResolveRelationName(ATable);
        Q.ParamByName('field').AsString := AColumn;
        Q.Open;
      except
        Q.SQL.Text := 'select cast(coalesce(f.rdb$description, '''') as ' +
          'varchar(255)) as descr from rdb$relation_fields rf ' +
          'join rdb$fields f on f.rdb$field_name = rf.rdb$field_source ' +
          'where rf.rdb$relation_name = :name and rf.rdb$field_name = :field';
        Q.ParamByName('name').AsString := ResolveRelationName(ATable);
        Q.ParamByName('field').AsString := AColumn;
        Q.Open;
      end;
    end;
    if not Q.EOF then
      Value := Trim(Q.FieldByName('descr').AsString);
    Q.Close;
  finally
    Q.Free;
  end;

  FDescriptionCache.Values[Key] := Value;
  Result := Value;
end;

function TIBStudioSession.ProcedureParameters(const AName: string): TStringArray;
var
  Q: TSQLQuery;
  I, Count: Integer;
begin
  Result := nil;
  Count := 0;
  if (AName = '') or not FConn.Connected then
    Exit;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text :=
      'select trim(rdb$parameter_name) as nome from rdb$procedure_parameters ' +
      'where rdb$procedure_name = :name ' +
      'order by rdb$parameter_type, rdb$parameter_number';
    Q.ParamByName('name').AsString := AName;
    Q.Open;
    while not Q.EOF do
    begin
      Inc(Count);
      SetLength(Result, Count);
      Result[Count - 1] := Trim(Q.FieldByName('nome').AsString);
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.ListUsers: TStringList;
var
  Q: TSQLQuery;
begin
  Result := TStringList.Create;
  Result.Sorted := True;
  Result.Duplicates := dupIgnore;
  if not FConn.Connected then
    Exit;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := 'select trim(sec$user_name) as nome from sec$users';
      Q.Open;
    except
      { No Firebird 2.5 os usuarios vem dos privilegios. }
      Q.SQL.Text := 'select distinct trim(rdb$user) as nome ' +
        'from rdb$user_privileges where rdb$user_type = 8';
      Q.Open;
    end;
    while not Q.EOF do
    begin
      if Trim(Q.FieldByName('nome').AsString) <> '' then
        Result.Add(Trim(Q.FieldByName('nome').AsString));
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.ListRoles: TStringList;
var
  Q: TSQLQuery;
begin
  Result := TStringList.Create;
  Result.Sorted := True;
  Result.Duplicates := dupIgnore;
  if not FConn.Connected then
    Exit;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := 'select trim(sec$role_name) as nome from sec$roles';
      Q.Open;
    except
      Q.SQL.Text := 'select trim(rdb$role_name) as nome from rdb$roles';
      Q.Open;
    end;
    while not Q.EOF do
    begin
      if Trim(Q.FieldByName('nome').AsString) <> '' then
        Result.Add(Trim(Q.FieldByName('nome').AsString));
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.ListObjectPrivileges(const AObjectName: string): TStringList;
var
  Q: TSQLQuery;
  Grantee, Privs, Priv: string;
begin
  Result := TStringList.Create;
  if not FConn.Connected then
    Exit;

  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := 'select trim(rdb$user_name) as grantee, ' +
        'rdb$relation_name as obj, ' +
        'cast(rdb$privilege_type as integer) as priv ' +
        'from rdb$user_privileges where rdb$relation_name = :name';
      Q.ParamByName('name').AsString := AObjectName;
      Q.Open;
    except
      { No Firebird 2.5 o privilegio e uma letra. }
      Q.SQL.Text := 'select trim(rdb$user) as grantee, rdb$relation_name as obj, ' +
        'rdb$privilege as priv from rdb$user_privileges ' +
        'where rdb$relation_name = :name';
      Q.ParamByName('name').AsString := AObjectName;
      Q.Open;
    end;
    while not Q.EOF do
    begin
      Grantee := Trim(Q.FieldByName('grantee').AsString);
      Priv := Trim(Q.FieldByName('priv').AsString);
      Privs := '';
      if Priv <> '' then
        if (Priv[1] >= '0') and (Priv[1] <= '9') then
        begin
          if (StrToIntDef(Priv, 0) and 1) <> 0 then
            Privs := Privs + 'SELECT';
          if (StrToIntDef(Priv, 0) and 2) <> 0 then
            Privs := Privs + AddSep(Privs) + 'INSERT';
          if (StrToIntDef(Priv, 0) and 4) <> 0 then
            Privs := Privs + AddSep(Privs) + 'UPDATE';
          if (StrToIntDef(Priv, 0) and 8) <> 0 then
            Privs := Privs + AddSep(Privs) + 'DELETE';
          if (StrToIntDef(Priv, 0) and 16) <> 0 then
            Privs := Privs + AddSep(Privs) + 'REFERENCES';
        end
        else
          case Priv[1] of
            'S': Privs := 'SELECT';
            'I': Privs := 'INSERT';
            'U': Privs := 'UPDATE';
            'D': Privs := 'DELETE';
            'R': Privs := 'REFERENCES';
            'E', 'X': Privs := 'EXECUTE';
          end;
      if (Grantee <> '') and (Privs <> '') then
        Result.Add(FormatPrivilegeLine(Grantee, AObjectName, Privs));
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.ActiveSessions: TStringList;
var
  Q: TSQLQuery;
  Line: string;
begin
  Result := TStringList.Create;
  if not FConn.Connected then
    Exit;

  Q := TSQLQuery.Create(nil);
  try
    try
      Q.DataBase := FConn;
      Q.Transaction := FTx;
      Q.SQL.Text := 'select mon$attachment_id as id, mon$user as usr, ' +
        'mon$stat_id as stat, mon$remote_address as addr ' +
        'from mon$attachments';
      Q.Open;
      while not Q.EOF do
      begin
        Line := Format('%-4s %-12s %-6s %s',
          [Q.FieldByName('id').AsString,
           Q.FieldByName('usr').AsString,
           Q.FieldByName('stat').AsString,
           Q.FieldByName('addr').AsString]);
        Result.Add(Line);
        Q.Next;
      end;
      Q.Close;
    except
      { O monitor pode estar desativado no servidor. }
      Result.Add('(nao foi possivel ler as sessoes ativas)');
    end;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.LoadSchemaModel: TSchemaModel;
var
  Q: TSQLQuery;
  Q2: TSQLQuery;
  Names: TStringList;
  I, Count: Integer;
  D: TDomainModel;
  E: TExceptionModel;
  G: TGeneratorModel;
  V: TViewModel;
  Obj: TCodeObject;
  Privs, S, PrivText: string;
  Priv: Integer;
  IsView: Boolean;

  function ReadNames(const ASQL: string): TStringList;
  var
    Q2: TSQLQuery;
    L: TStringList;
  begin
    L := TStringList.Create;
    Q2 := TSQLQuery.Create(nil);
    try
      Q2.DataBase := FConn;
      Q2.Transaction := FTx;
      Q2.SQL.Text := ASQL;
      Q2.Open;
      while not Q2.EOF do
      begin
        L.Add(Trim(Q2.FieldByName('nome').AsString));
        Q2.Next;
      end;
      Q2.Close;
    finally
      Q2.Free;
    end;
    Result := L;
  end;

begin
  Result := NewSchemaModel;
  if not FConn.Connected then
    Exit;

  { Dominios: no Firebird 2.5 sao os campos usados como tipo que nao sao
    colunas de nenhuma tabela. }
  Names := ReadNames(
    'select distinct trim(rf.rdb$field_source) as nome ' +
    'from rdb$relation_fields rf ' +
    'join rdb$fields f on f.rdb$field_name = rf.rdb$field_source ' +
    'where coalesce(f.rdb$system_flag, 0) = 0 ' +
    'and upper(rf.rdb$field_source) not like ''RDB$%'' ' +
    'and not exists (select 1 from rdb$relation_fields rf2 ' +
    '  where rf2.rdb$field_name = rf.rdb$field_source)');
  try
    Count := 0;
    for I := 0 to Names.Count - 1 do
    begin
      Q := TSQLQuery.Create(nil);
      try
        Q.DataBase := FConn;
        Q.Transaction := FTx;
        Q.SQL.Text :=
          'select cast(rdb$field_type as integer) as ftype, ' +
          'cast(coalesce(rdb$field_sub_type, 0) as integer) as fsubtype, ' +
          'cast(rdb$field_length as integer) as flen, ' +
          'cast(coalesce(rdb$field_precision, 0) as integer) as fprec, ' +
          'cast(coalesce(rdb$field_scale, 0) as integer) as fscale, ' +
          'cast(coalesce(rdb$description, '''') as varchar(255)) as descr ' +
          'from rdb$fields where rdb$field_name = :name';
        Q.ParamByName('name').AsString := Names[I];
        Q.Open;
        if not Q.EOF then
        begin
          D := Default(TDomainModel);
          D.Name := Names[I];
          D.TypeName := LowerCase(DescribeField(
            Q.FieldByName('ftype').AsInteger,
            Q.FieldByName('fsubtype').AsInteger,
            Q.FieldByName('flen').AsInteger,
            Q.FieldByName('fprec').AsInteger,
            Q.FieldByName('fscale').AsInteger));
          D.Description := Trim(Q.FieldByName('descr').AsString);
          Inc(Count);
          SetLength(Result.Domains, Count);
          Result.Domains[Count - 1] := D;
        end;
        Q.Close;
      finally
        Q.Free;
      end;
    end;
  finally
    Names.Free;
  end;

  { Exceptions. }
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text := 'select trim(rdb$exception_name) as nome, ' +
        'cast(rdb$exception_message as varchar(255)) as msg ' +
        'from rdb$exceptions';
      Q.Open;
    except
      { No Firebird 2.5 a coluna se chama rdb$message. }
      Q.SQL.Text := 'select trim(rdb$exception_name) as nome, ' +
        'cast(rdb$message as varchar(255)) as msg from rdb$exceptions';
      Q.Open;
    end;
    Count := 0;
    while not Q.EOF do
    begin
      E := Default(TExceptionModel);
      E.Name := Trim(Q.FieldByName('nome').AsString);
      E.Message := Trim(Q.FieldByName('msg').AsString);
      Inc(Count);
      SetLength(Result.Exceptions, Count);
      Result.Exceptions[Count - 1] := E;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;

  { Geradores. }
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text := 'select trim(rdb$generator_name) as nome from ' +
      'rdb$generators where coalesce(rdb$system_flag, 0) = 0';
    Q.Open;
    Count := 0;
    while not Q.EOF do
    begin
      G := Default(TGeneratorModel);
      G.Name := Trim(Q.FieldByName('nome').AsString);
      G.InitialValue := 0;
      { O valor atual vem do gerador (o catalogo do 2.5 nao o guarda). }
      Q2 := TSQLQuery.Create(nil);
      try
        Q2.DataBase := FConn;
        Q2.Transaction := FTx;
        Q2.SQL.Text := 'select cast(gen_id(' + QuoteIdentifier(G.Name) +
          ', 0) as bigint) as v from rdb$database';
        Q2.Open;
        if not Q2.EOF then
          G.InitialValue := Q2.FieldByName('v').AsLargeInt;
        Q2.Close;
      except
        { Gerador sem valor legivel: fica com zero. }
      end;
      Q2.Free;
      Inc(Count);
      SetLength(Result.Generators, Count);
      Result.Generators[Count - 1] := G;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;

  { Tabelas e views. }
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text :=
      'select trim(rdb$relation_name) as nome, rdb$view_blr as vblr ' +
      'from rdb$relations where coalesce(rdb$system_flag, 0) = 0';
    Q.Open;
    Count := 0;
    while not Q.EOF do
    begin
      IsView := not Q.FieldByName('vblr').IsNull;
      S := Trim(Q.FieldByName('nome').AsString);
      if IsView then
      begin
        Obj := LoadCodeObject(ckView, S);
        V := Default(TViewModel);
        V.Name := S;
        V.Source := Obj.Source;
        V.Columns := nil;
        Inc(Count);
        SetLength(Result.Views, Count);
        Result.Views[Count - 1] := V;
      end
      else
      begin
        Inc(Count);
        SetLength(Result.Tables, Count);
        Result.Tables[Count - 1] := LoadTableModel(S);
      end;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;

  { Procedures. }
  Names := ReadNames('select trim(rdb$procedure_name) as nome from ' +
    'rdb$procedures where coalesce(rdb$system_flag, 0) = 0');
  try
    Count := 0;
    for I := 0 to Names.Count - 1 do
    begin
      Obj := LoadCodeObject(ckProcedure, Names[I]);
      if not Obj.Exists then
        Continue;
      Inc(Count);
      SetLength(Result.Procedures, Count);
      Result.Procedures[Count - 1] := Obj;
    end;
  finally
    Names.Free;
  end;

  { Triggers. }
  Names := ReadNames('select trim(rdb$trigger_name) as nome from ' +
    'rdb$triggers where coalesce(rdb$system_flag, 0) = 0');
  try
    Count := 0;
    for I := 0 to Names.Count - 1 do
    begin
      Obj := LoadCodeObject(ckTrigger, Names[I]);
      if not Obj.Exists then
        Continue;
      Inc(Count);
      SetLength(Result.Triggers, Count);
      Result.Triggers[Count - 1] := Obj;
    end;
  finally
    Names.Free;
  end;

  { Grants de tabela (priviligios por usuario). }
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    try
      Q.SQL.Text :=
        'select trim(rdb$user_name) as uname, trim(rdb$relation_name) as tname, ' +
        'cast(rdb$privilege_type as varchar(20)) as priv ' +
        'from rdb$user_privileges where rdb$relation_name is not null';
      Q.Open;
    except
      { No Firebird 2.5 as colunas se chamam rdb$user e rdb$privilege. }
      Q.SQL.Text :=
        'select trim(rdb$user) as uname, trim(rdb$relation_name) as tname, ' +
        'cast(rdb$privilege as varchar(20)) as priv ' +
        'from rdb$user_privileges where rdb$relation_name is not null';
      Q.Open;
    end;
    Count := 0;
    while not Q.EOF do
    begin
      { No 2.5 o privilegio e uma letra (S, I, U, D, R); no 3.0 e uma
        mascara de bits. }
      PrivText := Trim(Q.FieldByName('priv').AsString);
      Privs := '';
      if PrivText <> '' then
        if (PrivText[1] >= '0') and (PrivText[1] <= '9') then
        begin
          Priv := StrToIntDef(PrivText, 0);
          if (Priv and 1) <> 0 then
            Privs := Privs + 'SELECT';
          if (Priv and 2) <> 0 then
            Privs := Privs + AddSep(Privs) + 'INSERT';
          if (Priv and 4) <> 0 then
            Privs := Privs + AddSep(Privs) + 'UPDATE';
          if (Priv and 8) <> 0 then
            Privs := Privs + AddSep(Privs) + 'DELETE';
          if (Priv and 16) <> 0 then
            Privs := Privs + AddSep(Privs) + 'REFERENCES';
        end
        else
          case PrivText[1] of
            'S': Privs := 'SELECT';
            'I': Privs := 'INSERT';
            'U': Privs := 'UPDATE';
            'D': Privs := 'DELETE';
            'R': Privs := 'REFERENCES';
            'E', 'X': Privs := 'EXECUTE';
          end;
      if Privs <> '' then
      begin
        Inc(Count);
        SetLength(Result.Grants, Count);
        Result.Grants[Count - 1] := 'grant ' + Privs + ' on ' +
          QuoteIdentifier(Q.FieldByName('tname').AsString) + ' to ' +
          QuoteIdentifier(Q.FieldByName('uname').AsString) + ';';
      end;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function TIBStudioSession.ExecuteStatement(const ASQL: string;
  out AError: string): Boolean;begin
  AError := '';
  Result := False;
  try
    RunParams(FConn, FTx, ASQL, nil, False);
    Commit;
    Result := True;
  except
    on E: Exception do
    begin
      AError := DescribeException(E);
      try
        if FTx.Active then
          FTx.Rollback;
        FTx.StartTransaction;
      except
        { Mantem a mensagem original. }
      end;
    end;
  end;
end;

function TIBStudioSession.RelationFieldMetas(const ARelation: string): TFieldMetaArray;
var
  Q: TSQLQuery;
  Rel: string;
  Meta: TFieldMeta;
  Count: Integer;
begin
  Result := nil;
  if (ARelation = '') or not FConn.Connected then
    Exit;

  Rel := ResolveRelationName(ARelation);
  Count := 0;
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := FConn;
    Q.Transaction := FTx;
    Q.SQL.Text :=
      'select trim(rf.rdb$field_name) as nome, ' +
      'cast(f.rdb$field_type as integer) as ftype, ' +
      'cast(coalesce(f.rdb$field_sub_type, 0) as integer) as fsubtype, ' +
      'cast(f.rdb$field_length as integer) as flen, ' +
      'cast(coalesce(f.rdb$field_precision, 0) as integer) as fprec, ' +
      'cast(coalesce(f.rdb$field_scale, 0) as integer) as fscale, ' +
      'cast(coalesce(rf.rdb$null_flag, 0) as integer) as fnull ' +
      'from rdb$relation_fields rf ' +
      'join rdb$fields f on f.rdb$field_name = rf.rdb$field_source ' +
      'where rf.rdb$relation_name = :rel ' +
      'order by rf.rdb$field_position';
    Q.ParamByName('rel').AsString := Rel;
    Q.Open;
    while not Q.EOF do
    begin
      Meta.Name := Trim(Q.Fields[0].AsString);
      Meta.FieldType := Q.Fields[1].AsInteger;
      Meta.SubType := Q.Fields[2].AsInteger;
      Meta.Length := Q.Fields[3].AsInteger;
      Meta.Precision := Q.Fields[4].AsInteger;
      Meta.Scale := Q.Fields[5].AsInteger;
      Meta.Nullable := Q.Fields[6].AsInteger <> 0;
      Inc(Count);
      SetLength(Result, Count);
      Result[Count - 1] := Meta;
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

end.
