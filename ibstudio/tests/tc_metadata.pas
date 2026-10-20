unit tc_metadata;
{ Testes do catalogo: SQL gerado e descricao de tipos. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtypes, ibmetadata;

type
  TMetadataTest = class(TTestCase)
  published
    procedure PastasCobremNoveTipos;
    procedure ListaDeTabelasFiltraSistema;
    procedure ListaDeViewsUsaViewBlr;
    procedure ListaDeProceduresFiltraSistema;
    procedure TabelaEDevemColunas;
    procedure TriggerNaoTemFilhos;
    procedure DescreveTiposBasicos;
    procedure DescreveNumericComEscala;
    procedure DescreveNullable;
  end;

implementation

procedure TMetadataTest.PastasCobremNoveTipos;
var
  S: TFolderSpecArray;
  I: Integer;
  Kinds: set of TMetadataKind;
begin
  S := FolderSpecs;
  AssertEquals('quantidade de pastas', 9, Length(S));
  Kinds := [];
  for I := 0 to High(S) do
  begin
    AssertFalse('SQL nao vazio: ' + S[I].Title, Trim(S[I].ListSQL) = '');
    AssertTrue('titulo nao vazio', Trim(S[I].Title) <> '');
    Kinds := Kinds + [S[I].Kind];
  end;
  AssertTrue('tabelas', mkTable in Kinds);
  AssertTrue('views', mkView in Kinds);
  AssertTrue('procedures', mkProcedure in Kinds);
  AssertTrue('triggers', mkTrigger in Kinds);
  AssertTrue('domains', mkDomain in Kinds);
  AssertTrue('generators', mkGenerator in Kinds);
  AssertTrue('exceptions', mkException in Kinds);
  AssertTrue('roles', mkRole in Kinds);
  AssertTrue('udfs', mkUdf in Kinds);
end;

procedure TMetadataTest.ListaDeTabelasFiltraSistema;
var
  SQL: string;
begin
  SQL := UpperCase(ListSQLFor(mkTable));
  AssertTrue('filtra sistema', Pos('RDB$SYSTEM_FLAG', SQL) > 0);
  AssertTrue('so tabelas', Pos('RDB$VIEW_BLR IS NULL', SQL) > 0);
  AssertTrue('ordena', Pos('ORDER BY', SQL) > 0);
end;

procedure TMetadataTest.ListaDeViewsUsaViewBlr;
var
  SQL: string;
begin
  SQL := UpperCase(ListSQLFor(mkView));
  AssertTrue('usa view_blr', Pos('RDB$VIEW_BLR IS NOT NULL', SQL) > 0);
end;

procedure TMetadataTest.ListaDeProceduresFiltraSistema;
var
  SQL: string;
begin
  SQL := UpperCase(ListSQLFor(mkProcedure));
  AssertTrue('tabela de procedures', Pos('RDB$PROCEDURES', SQL) > 0);
  AssertTrue('filtra sistema', Pos('RDB$SYSTEM_FLAG', SQL) > 0);
end;

procedure TMetadataTest.TabelaEDevemColunas;
begin
  AssertTrue('tabela', ChildrenSQLFor(mkTable) <> '');
  AssertTrue('view', ChildrenSQLFor(mkView) <> '');
  AssertTrue('procedure', ChildrenSQLFor(mkProcedure) <> '');
  AssertTrue('tabela usa parametro name', Pos(':name', ChildrenSQLFor(mkTable)) > 0);
end;

procedure TMetadataTest.TriggerNaoTemFilhos;
begin
  AssertEquals('trigger e folha', '', ChildrenSQLFor(mkTrigger));
end;

procedure TMetadataTest.DescreveTiposBasicos;
begin
  AssertEquals('INTEGER', 'INTEGER', DescribeField(fbtInteger, 0, 4, 0, 0));
  AssertEquals('SMALLINT', 'SMALLINT', DescribeField(fbtSmallInt, 0, 2, 0, 0));
  AssertEquals('BIGINT', 'BIGINT', DescribeField(fbtBigInt, 0, 8, 0, 0));
  AssertEquals('VARCHAR', 'VARCHAR(50)', DescribeField(fbtVarchar, 0, 50, 0, 0));
  AssertEquals('CHAR', 'CHAR(10)', DescribeField(fbtChar, 0, 10, 0, 0));
  AssertEquals('TIMESTAMP', 'TIMESTAMP', DescribeField(fbtTimestamp, 0, 8, 0, 0));
  AssertEquals('DATE', 'DATE', DescribeField(fbtDate, 0, 4, 0, 0));
  AssertEquals('BLOB texto', 'BLOB TEXT', DescribeField(fbtBlob, 1, 8, 0, 0));
end;

procedure TMetadataTest.DescreveNumericComEscala;
begin
  AssertEquals('numeric(15,2)', 'NUMERIC(15,2)', DescribeField(fbtInteger, 0, 4, 15, -2));
  AssertEquals('numeric(9,0)', 'NUMERIC(9,0)', DescribeField(fbtInteger, 1, 4, 9, 0));
  AssertEquals('decimal(9,2)', 'DECIMAL(9,2)', DescribeField(fbtInteger, 2, 4, 9, -2));
  AssertEquals('smallint', 'SMALLINT', DescribeField(fbtSmallInt, 0, 2, 0, 0));
  AssertEquals('numeric(18,4) em bigint', 'NUMERIC(18,4)',
    DescribeField(fbtBigInt, 1, 8, 18, -4));
  AssertEquals('numeric(15,2) em double', 'NUMERIC(15,2)',
    DescribeField(fbtDouble, 1, 8, 15, -2));
  AssertEquals('double', 'DOUBLE PRECISION', DescribeField(fbtDouble, 0, 8, 0, 0));
end;

procedure TMetadataTest.DescreveNullable;
begin
  AssertEquals('not null', 'INTEGER NOT NULL', DescribeColumn(fbtInteger, 0, 4, 0, 0, False));
  AssertEquals('null', 'INTEGER NULL', DescribeColumn(fbtInteger, 0, 4, 0, 0, True));
end;

initialization
  RegisterTest(TMetadataTest);

end.
