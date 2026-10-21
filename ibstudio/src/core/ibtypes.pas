unit ibtypes;
{ Tipos de dominio do IBStudio — sem dependencia de LCL ou de banco. }

{$mode objfpc}{$H+}{$modeswitch advancedrecords}

interface

uses
  SysUtils, Classes, Generics.Collections;

type
  { Callback com o texto executado no editor. }
  TScriptEvent = procedure(const AScript: string) of object;

  { Tipo sintatico de um comando SQL isolado. }
  TStatementKind = (
    skEmpty,
    skSelect,        // SELECT / WITH ... SELECT / EXECUTE PROCEDURE
    skExecBlock,     // EXECUTE BLOCK (pode ou nao devolver linhas)
    skDml,           // INSERT / UPDATE / DELETE / MERGE
    skDdl,           // CREATE / ALTER / DROP / GRANT / COMMENT / SET ...
    skOther
  );

  TStatement = record
    SQL: string;
    Kind: TStatementKind;
  end;
  TStatementArray = array of TStatement;

  { Metadados de um campo de tabela, lidos do catalogo RDB$. }
  TFieldMeta = record
    Name: string;
    FieldType: Integer;   { codigo de rdb$field_type }
    SubType: Integer;
    Length: Integer;
    Precision: Integer;
    Scale: Integer;
    Nullable: Boolean;
  end;
  TFieldMetaArray = array of TFieldMeta;

  { Objetos de codigo que o editor de codigo manipula. }
  TCodeKind = (ckNoObject, ckProcedure, ckTrigger, ckView, ckDomain, ckException,
    ckGenerator);

  { Objeto de codigo lido do catalogo. }
  TCodeObject = record
    Kind: TCodeKind;
    Name: string;
    Source: string;   { corpo editavel }
    Prefix: string;   { parte que precede o corpo no comando DDL }
    Exists: Boolean;
    { O Firebird 2.5 nao guarda o texto das views: nesse caso o objeto
      existe, mas a fonte nao esta disponivel. }
    SourceAvailable: Boolean;
  end;

  { Perfil de conexao informado pelo usuario. A senha nunca e persistida. }
  TConnectionProfile = class
  private
    FHost: string;
    FPort: Integer;
    FDatabase: string;
    FUser: string;
    FPassword: string;
    FCharset: string;
    FDialect: Integer;
  public
    constructor Create;
    function Clone: TConnectionProfile;
    { Copia os valores de outro perfil (a senha incluida). }
    procedure CopyFrom(const AProfile: TConnectionProfile);
    function DisplayName: string;
    property Host: string read FHost write FHost;
    property Port: Integer read FPort write FPort;
    property Database: string read FDatabase write FDatabase;
    property User: string read FUser write FUser;
    property Password: string read FPassword write FPassword;
    property Charset: string read FCharset write FCharset;
    property Dialect: Integer read FDialect write FDialect;
  end;

  TMetadataKind = (
    mkFolder,
    mkTable,
    mkView,
    mkProcedure,
    mkTrigger,
    mkDomain,
    mkGenerator,
    mkException,
    mkRole,
    mkUdf,
    mkColumn,
    mkParam,
    mkIndex
  );

  { No da arvore de metadados. Filhos sao carregados sob demanda. }
  TMetadataNode = class
  private
    FKind: TMetadataKind;
    FName: string;
    FDetail: string;
    FChildren: specialize TObjectList<TMetadataNode>;
    FLoaded: Boolean;
    FIsLeaf: Boolean;
    FFolderKind: TMetadataKind;
  public
    constructor Create(AKind: TMetadataKind; const AName, ADetail: string);
    destructor Destroy; override;
    function AddChild(AKind: TMetadataKind; const AName, ADetail: string): TMetadataNode;
    procedure ClearChildren;
    property Kind: TMetadataKind read FKind;
    property Name: string read FName;
    property Detail: string read FDetail write FDetail;
    property Children: specialize TObjectList<TMetadataNode> read FChildren;
    property Loaded: Boolean read FLoaded write FLoaded;
    property IsLeaf: Boolean read FIsLeaf write FIsLeaf;
    { Para nos de pasta: o tipo dos objetos que ela lista. }
    property FolderKind: TMetadataKind read FFolderKind write FFolderKind;
  end;

  { Resultado de uma execucao. }
  TExecOutcome = record
    Statement: string;
    Kind: TStatementKind;
    Rows: Int64;
    Affected: Int64;
    ElapsedMs: Int64;
    Error: string;
    function Succeeded: Boolean;
  end;
  TExecOutcomeArray = array of TExecOutcome;

const
  StatementKindNames: array[TStatementKind] of string = (
    'vazio', 'select', 'execute block', 'dml', 'ddl', 'outro'
  );

function MetadataKindName(AKind: TMetadataKind): string;

implementation

function MetadataKindName(AKind: TMetadataKind): string;
begin
  case AKind of
    mkFolder: Result := 'pasta';
    mkTable: Result := 'tabela';
    mkView: Result := 'view';
    mkProcedure: Result := 'procedure';
    mkTrigger: Result := 'trigger';
    mkDomain: Result := 'domain';
    mkGenerator: Result := 'generator';
    mkException: Result := 'exception';
    mkRole: Result := 'role';
    mkUdf: Result := 'udf';
    mkColumn: Result := 'coluna';
    mkParam: Result := 'parametro';
    mkIndex: Result := 'indice';
  else
    Result := '?';
  end;
end;

{ TConnectionProfile }

constructor TConnectionProfile.Create;
begin
  inherited Create;
  FHost := 'localhost';
  FPort := 3050;
  FDatabase := '';
  FUser := 'SYSDBA';
  FPassword := '';
  FCharset := 'UTF8';
  FDialect := 3;
end;

function TConnectionProfile.Clone: TConnectionProfile;
begin
  Result := TConnectionProfile.Create;
  Result.Host := FHost;
  Result.Port := FPort;
  Result.Database := FDatabase;
  Result.User := FUser;
  Result.Password := FPassword;
  Result.Charset := FCharset;
  Result.Dialect := FDialect;
end;

procedure TConnectionProfile.CopyFrom(const AProfile: TConnectionProfile);
begin
  if (AProfile = nil) or (AProfile = Self) then
    Exit;
  FHost := AProfile.Host;
  FPort := AProfile.Port;
  FDatabase := AProfile.Database;
  FUser := AProfile.User;
  FPassword := AProfile.Password;
  FCharset := AProfile.Charset;
  FDialect := AProfile.Dialect;
end;

function TConnectionProfile.DisplayName: string;
var
  Sep: string;
begin
  { Caminho absoluto no Unix ja comeca com '/': nao repetir o separador. }
  if (FDatabase <> '') and (FDatabase[1] in ['/', '\']) then
    Sep := ''
  else
    Sep := '/';
  Result := Format('%s:%d%s%s', [FHost, FPort, Sep, FDatabase]);
end;

{ TMetadataNode }

constructor TMetadataNode.Create(AKind: TMetadataKind; const AName, ADetail: string);
begin
  inherited Create;
  FKind := AKind;
  { Por padrao a pasta lista objetos do mesmo tipo que ela representa; nos de
    pasta de verdade (mkFolder) recebem o tipo explicitamente. }
  FFolderKind := AKind;
  FName := AName;
  FDetail := ADetail;
  FChildren := specialize TObjectList<TMetadataNode>.Create(True);
end;

destructor TMetadataNode.Destroy;
begin
  FChildren.Free;
  inherited Destroy;
end;

function TMetadataNode.AddChild(AKind: TMetadataKind; const AName, ADetail: string): TMetadataNode;
begin
  Result := TMetadataNode.Create(AKind, AName, ADetail);
  FChildren.Add(Result);
end;

procedure TMetadataNode.ClearChildren;
begin
  FChildren.Clear;
  FLoaded := False;
end;

{ TExecOutcome }

function TExecOutcome.Succeeded: Boolean;
begin
  Result := Error = '';
end;

end.
