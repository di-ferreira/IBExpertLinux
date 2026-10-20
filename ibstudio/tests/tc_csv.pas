unit tc_csv;
{ Testes de leitura e escrita de CSV. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, DB, bufdataset, ibcsv;

type
  { TBufDataset exige LoadBlobIntoBuffer; aqui nenhum blob entra no buffer. }
  TTestBuffer = class(TBufDataset)
  protected
    procedure LoadBlobIntoBuffer(FieldDef: TFieldDef;
      ABlobBuf: PBufBlobField); override;
  end;

  TCsvTest = class(TTestCase)
  published
    procedure EscapaComSeparador;
    procedure Desescapa;
    procedure IdaEVolta;
    procedure LeSemCabecalho;
    procedure NuloUsaToken;
    procedure TextoComQuebraDeLinha;
  end;

implementation

procedure TTestBuffer.LoadBlobIntoBuffer(FieldDef: TFieldDef;
  ABlobBuf: PBufBlobField);
begin
  if ABlobBuf <> nil then
    ABlobBuf^.BlobBuffer := nil;
end;

procedure TCsvTest.EscapaComSeparador;
var
  O: TCsvOptions;
begin
  DefaultCsvOptions(O);
  AssertEquals('separador', '"a;b"', CsvEscape('a;b', O));
  AssertEquals('aspas duplas', '"a""b"', CsvEscape('a"b', O));
  AssertEquals('texto simples', 'abc', CsvEscape('abc', O));
end;

procedure TCsvTest.Desescapa;
var
  O: TCsvOptions;
begin
  DefaultCsvOptions(O);
  AssertEquals('remove aspas', 'a;b', CsvUnescape('"a;b"', O));
  AssertEquals('desescapa aspas', 'a"b', CsvUnescape('"a""b"', O));
  AssertEquals('sem aspas fica igual', 'abc', CsvUnescape('abc', O));
end;

procedure TCsvTest.IdaEVolta;
var
  O: TCsvOptions;
  Buf: TTestBuffer;
  Stream: TMemoryStream;
  Table: TCsvTable;
begin
  DefaultCsvOptions(O);
  O.NullToken := 'NULL';

  Buf := TTestBuffer.Create(nil);
  Stream := TMemoryStream.Create;
  try
    Buf.FieldDefs.Add('ID', ftInteger, 0, False);
    Buf.FieldDefs.Add('NOME', ftString, 60, False);
    Buf.CreateDataset;
    Buf.Open;

    Buf.Append;
    Buf.FieldByName('ID').AsInteger := 1;
    Buf.FieldByName('NOME').AsString := 'Ação; com aspas"';
    Buf.Post;

    Buf.Append;
    Buf.FieldByName('ID').AsInteger := 2;
    Buf.FieldByName('NOME').Clear;
    Buf.Post;

    WriteCsv(Buf, Stream, O);
    Stream.Position := 0;
    Table := ReadCsv(Stream, O);
    try
      AssertEquals('colunas', 2, Table.ColumnCount);
      AssertEquals('linhas', 2, Table.RowCount);
      AssertEquals('cabecalho', 'NOME', Table.ColumnName(1));
      AssertEquals('valor com separador e aspas', 'Ação; com aspas"',
        Table.Cell(0, 1));
      AssertEquals('nulo pelo token', 'NULL', Table.Cell(1, 1));
    finally
      Table.Free;
    end;
  finally
    Stream.Free;
    Buf.Free;
  end;
end;

procedure TCsvTest.LeSemCabecalho;
var
  O: TCsvOptions;
  Stream: TMemoryStream;
  Table: TCsvTable;
  Content: string;
begin
  DefaultCsvOptions(O);
  O.ReadHeader := False;

  Stream := TMemoryStream.Create;
  try
    Content := '1;Ana'#13#10'2;Bia'#13#10;
    Stream.WriteBuffer(Content[1], Length(Content));
    Stream.Position := 0;
    Table := ReadCsv(Stream, O);
    try
      AssertEquals('linhas', 2, Table.RowCount);
      AssertEquals('primeiro valor', '1', Table.Cell(0, 0));
      AssertEquals('segundo valor', 'Bia', Table.Cell(1, 1));
    finally
      Table.Free;
    end;
  finally
    Stream.Free;
  end;
end;

procedure TCsvTest.NuloUsaToken;
var
  O: TCsvOptions;
  Buf: TTestBuffer;
  Stream: TMemoryStream;
  Text: string;
  Raw: AnsiString;
begin
  DefaultCsvOptions(O);
  O.NullToken := 'NULL';
  O.WriteHeader := False;

  Buf := TTestBuffer.Create(nil);
  Stream := TMemoryStream.Create;
  try
    Buf.FieldDefs.Add('X', ftString, 10, False);
    Buf.CreateDataset;
    Buf.Open;
    Buf.Append;
    Buf.FieldByName('X').Clear;
    Buf.Post;

    WriteCsv(Buf, Stream, O);
    SetLength(Raw, Stream.Size);
    Stream.Position := 0;
    if Stream.Size > 0 then
      Stream.ReadBuffer(Raw[1], Stream.Size);
    Text := CsvDecode(Raw, O);
    AssertTrue('token de nulo no arquivo', Pos('NULL', Text) > 0);
  finally
    Stream.Free;
    Buf.Free;
  end;
end;

procedure TCsvTest.TextoComQuebraDeLinha;
var
  O: TCsvOptions;
  Stream: TMemoryStream;
  Table: TCsvTable;
  Content: string;
begin
  DefaultCsvOptions(O);

  Stream := TMemoryStream.Create;
  try
    Content := 'A;B'#13#10'"linha1'#10'linha2";valor'#13#10;
    Stream.WriteBuffer(Content[1], Length(Content));
    Stream.Position := 0;
    Table := ReadCsv(Stream, O);
    try
      AssertEquals('linhas', 1, Table.RowCount);
      AssertEquals('texto com quebra de linha', 'linha1'#10'linha2',
        Table.Cell(0, 0));
      AssertEquals('segundo campo', 'valor', Table.Cell(0, 1));
    finally
      Table.Free;
    end;
  finally
    Stream.Free;
  end;
end;

initialization
  RegisterTest(TCsvTest);

end.
