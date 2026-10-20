unit ibcsv;
{ Leitura e escrita de arquivos CSV. Nao depende de LCL: a UI escolhe o
  arquivo e as opcoes, o nucleo faz a conversao. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, DB;

type
  TCsvOptions = record
    Delimiter: string;     { separador de campos }
    QuoteChar: string;     { caractere de aspas }
    WriteHeader: Boolean;  { escreve a linha de cabecalho }
    ReadHeader: Boolean;   { a primeira linha do arquivo e cabecalho }
    NullToken: string;     { texto usado para representar NULL }
    LineEnding: string;    { fim de linha }
    Encoding: string;      { 'UTF8' ou 'ISO8859_1' }
  end;

  { Tabela CSV lida na memoria. }
  TCsvTable = class
  private
    FColumns: TStringList;
    FRows: TList;
  public
    constructor Create;
    destructor Destroy; override;
    function ColumnCount: Integer;
    function RowCount: Integer;
    function ColumnName(AIndex: Integer): string;
    function Cell(ARow, AColumn: Integer): string;
    function ColumnIndex(const AName: string): Integer;
    function CellByName(ARow: Integer; const AName: string): string;
    function RowStrings(ARow: Integer): TStrings;
    procedure AddRow(const AValues: TStrings);
    property Columns: TStringList read FColumns;
  end;

{ Opcoes padrao: ponto e virgula, aspas, cabecalho, UTF-8. }
procedure DefaultCsvOptions(out AOptions: TCsvOptions);

{ Coloca aspas quando o texto tem separador, aspas ou quebra de linha. }
function CsvEscape(const AValue: string; const AOptions: TCsvOptions): string;

{ Remove as aspas de um campo e desescapa as aspas duplicadas. }
function CsvUnescape(const AValue: string; const AOptions: TCsvOptions): string;

{ Escreve o conjunto de dados no fluxo (cabecalho + linhas). }
function WriteCsv(ADataset: TDataset; AStream: TStream;
  const AOptions: TCsvOptions): Integer;

{ Le o fluxo e devolve a tabela (cabecalho opcional). }
function ReadCsv(AStream: TStream; const AOptions: TCsvOptions): TCsvTable;

{ Converte texto para bytes e vice-versa conforme a codificacao. }
function CsvEncode(const AText: string; const AOptions: TCsvOptions): AnsiString;
function CsvDecode(const ABytes: AnsiString; const AOptions: TCsvOptions): string;

implementation

{ TCsvTable }

constructor TCsvTable.Create;
begin
  inherited Create;
  FColumns := TStringList.Create;
  FRows := TList.Create;
end;

destructor TCsvTable.Destroy;
var
  I: Integer;
begin
  for I := 0 to FRows.Count - 1 do
    TStringList(FRows[I]).Free;
  FRows.Free;
  FColumns.Free;
  inherited Destroy;
end;

function TCsvTable.ColumnCount: Integer;
begin
  Result := FColumns.Count;
end;

function TCsvTable.RowCount: Integer;
begin
  Result := FRows.Count;
end;

function TCsvTable.ColumnName(AIndex: Integer): string;
begin
  if (AIndex < 0) or (AIndex >= FColumns.Count) then
    Exit('');
  Result := FColumns[AIndex];
end;

function TCsvTable.Cell(ARow, AColumn: Integer): string;
var
  Row: TStringList;
begin
  Result := '';
  if (ARow < 0) or (ARow >= FRows.Count) then
    Exit;
  Row := TStringList(FRows[ARow]);
  if (AColumn < 0) or (AColumn >= Row.Count) then
    Exit;
  Result := Row[AColumn];
end;

function TCsvTable.ColumnIndex(const AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to FColumns.Count - 1 do
    if SameText(FColumns[I], AName) then
      Exit(I);
  Result := -1;
end;

function TCsvTable.CellByName(ARow: Integer; const AName: string): string;
begin
  Result := Cell(ARow, ColumnIndex(AName));
end;

function TCsvTable.RowStrings(ARow: Integer): TStrings;
begin
  if (ARow < 0) or (ARow >= FRows.Count) then
    Exit(nil);
  Result := TStringList(FRows[ARow]);
end;

procedure TCsvTable.AddRow(const AValues: TStrings);
var
  Row: TStringList;
  I: Integer;
begin
  Row := TStringList.Create;
  for I := 0 to AValues.Count - 1 do
    Row.Add(AValues[I]);
  FRows.Add(Row);
end;

{ Opcoes }

procedure DefaultCsvOptions(out AOptions: TCsvOptions);
begin
  AOptions.Delimiter := ';';
  AOptions.QuoteChar := '"';
  AOptions.WriteHeader := True;
  AOptions.ReadHeader := True;
  AOptions.NullToken := '';
  AOptions.LineEnding := sLineBreak;
  AOptions.Encoding := 'UTF8';
end;

function OptDelimiter(const AOptions: TCsvOptions): string;
begin
  Result := AOptions.Delimiter;
  if Result = '' then
    Result := ';';
end;

function OptQuote(const AOptions: TCsvOptions): string;
begin
  Result := AOptions.QuoteChar;
  if Result = '' then
    Result := '"';
end;

function CsvEscape(const AValue: string; const AOptions: TCsvOptions): string;
var
  Delim, Quote: string;
  Needs: Boolean;
  I: Integer;
begin
  Delim := OptDelimiter(AOptions);
  Quote := OptQuote(AOptions);

  Needs := False;
  if AValue = '' then
    Needs := True
  else if (Pos(Delim, AValue) > 0) or (Pos(Quote, AValue) > 0) or
          (Pos(#10, AValue) > 0) or (Pos(#13, AValue) > 0) then
    Needs := True
  else if (AValue[1] = ' ') or (AValue[Length(AValue)] = ' ') then
    Needs := True;

  if not Needs then
    Exit(AValue);

  Result := Quote;
  for I := 1 to Length(AValue) do
  begin
    if AValue[I] = Quote[1] then
      Result := Result + Quote;
    Result := Result + AValue[I];
  end;
  Result := Result + Quote;
end;

function CsvUnescape(const AValue: string; const AOptions: TCsvOptions): string;
var
  Quote: string;
  I: Integer;
  Inside: Boolean;
begin
  Quote := OptQuote(AOptions);
  if (Length(AValue) < 2) or (AValue[1] <> Quote[1]) or
     (AValue[Length(AValue)] <> Quote[1]) then
    Exit(AValue);

  Result := '';
  Inside := False;
  I := 1;
  while I <= Length(AValue) do
  begin
    if not Inside then
    begin
      Inside := True;
      Inc(I);
      Continue;
    end;
    if AValue[I] = Quote[1] then
    begin
      if (I < Length(AValue)) and (AValue[I + 1] = Quote[1]) then
      begin
        Result := Result + Quote;
        Inc(I, 2);
        Continue;
      end;
      Inside := False;
      Inc(I);
      Continue;
    end;
    Result := Result + AValue[I];
    Inc(I);
  end;
end;

{ Codificacao }

function CsvEncoding(const AOptions: TCsvOptions): TEncoding;
begin
  Result := nil;
  if SameText(AOptions.Encoding, 'ISO8859_1') or
     SameText(AOptions.Encoding, 'ISO-8859-1') or
     SameText(AOptions.Encoding, 'LATIN1') then
  begin
    try
      Result := TEncoding.GetEncoding('ISO-8859-1');
    except
      Result := nil;
    end;
    if Result = nil then
      Result := TEncoding.ANSI;
  end
  else
    Result := TEncoding.UTF8;
end;

function IsUtf8(const AOptions: TCsvOptions): Boolean;
begin
  Result := not (SameText(AOptions.Encoding, 'ISO8859_1') or
    SameText(AOptions.Encoding, 'ISO-8859-1') or
    SameText(AOptions.Encoding, 'LATIN1'));
end;

function BytesToStr(const ABytes: TBytes): AnsiString;
var
  I: Integer;
begin
  SetLength(Result, Length(ABytes));
  for I := 1 to Length(ABytes) do
    Result[I] := Chr(ABytes[I - 1]);
end;

function StrToBytes(const AStr: AnsiString): TBytes;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, Length(AStr));
  for I := 1 to Length(AStr) do
    Result[I - 1] := Byte(AStr[I]);
end;

{ A aplicacao trata string como UTF-8; a conversao para ISO-8859-1 passa
  pelos bytes de verdade. }
function CsvEncode(const AText: string; const AOptions: TCsvOptions): AnsiString;
var
  Uni: UnicodeString;
begin
  if IsUtf8(AOptions) then
    Result := AnsiString(AText)
  else
  begin
    Uni := TEncoding.UTF8.GetString(StrToBytes(AnsiString(AText)));
    Result := BytesToStr(CsvEncoding(AOptions).GetBytes(Uni));
  end;
end;

function CsvDecode(const ABytes: AnsiString; const AOptions: TCsvOptions): string;
var
  Uni: UnicodeString;
begin
  if IsUtf8(AOptions) then
    Result := ABytes
  else
  begin
    Uni := CsvEncoding(AOptions).GetString(StrToBytes(ABytes));
    Result := BytesToStr(TEncoding.UTF8.GetBytes(Uni));
  end;
end;

{ Escrita }

function WriteCsv(ADataset: TDataset; AStream: TStream;
  const AOptions: TCsvOptions): Integer;
var
  I: Integer;
  Text, Delim: string;
  Bytes: AnsiString;
  F: TField;
  BM: TBookmark;
  HasBM: Boolean;
begin
  Result := 0;
  if not Assigned(ADataset) or not Assigned(AStream) then
    Exit;

  { Preserva a posicao atual do conjunto: a grade deve continuar no mesmo
    registro depois da exportacao. }
  HasBM := False;
  try
    if ADataset.Active then
    begin
      BM := ADataset.Bookmark;
      HasBM := True;
    end;
  except
    HasBM := False;
  end;

  Delim := OptDelimiter(AOptions);
  Text := '';

  if AOptions.WriteHeader then
  begin
    for I := 0 to ADataset.FieldCount - 1 do
    begin
      if I > 0 then
        Text := Text + Delim;
      Text := Text + CsvEscape(ADataset.Fields[I].FieldName, AOptions);
    end;
    Text := Text + AOptions.LineEnding;
  end;

  ADataset.First;
  while not ADataset.EOF do
  begin
    for I := 0 to ADataset.FieldCount - 1 do
    begin
      F := ADataset.Fields[I];
      if I > 0 then
        Text := Text + Delim;
      if F.IsNull then
        Text := Text + AOptions.NullToken
      else if F.DataType = ftBoolean then
      begin
        if F.AsBoolean then
          Text := Text + '1'
        else
          Text := Text + '0';
      end
      else
        Text := Text + CsvEscape(F.AsString, AOptions);
    end;
    Text := Text + AOptions.LineEnding;
    Inc(Result);
    ADataset.Next;
  end;

  Bytes := CsvEncode(Text, AOptions);
  if Length(Bytes) > 0 then
    AStream.WriteBuffer(Bytes[1], Length(Bytes));

  if HasBM then
    try
      ADataset.GotoBookmark(BM);
    except
      { Conjunto sem posicao estavel: segue com o cursor onde estiver. }
    end;
end;

{ Leitura }

function ReadCsv(AStream: TStream; const AOptions: TCsvOptions): TCsvTable;
var
  Bytes: AnsiString;
  Text, Delim, Quote, Field: string;
  I, N: Integer;
  Row: TStringList;

  procedure EndRow;
  begin
    if Row.Count > 0 then
    begin
      Result.AddRow(Row);
      Row.Clear;
    end;
  end;

begin
  Result := TCsvTable.Create;
  if not Assigned(AStream) then
    Exit;

  SetLength(Bytes, AStream.Size - AStream.Position);
  if Length(Bytes) > 0 then
    AStream.ReadBuffer(Bytes[1], Length(Bytes));

  Text := CsvDecode(Bytes, AOptions);
  Delim := OptDelimiter(AOptions);
  Quote := OptQuote(AOptions);

  Row := TStringList.Create;
  try
    I := 1;
    N := Length(Text);
    while I <= N do
    begin
      Field := '';
      if Text[I] = Quote[1] then
      begin
        Inc(I);
        while I <= N do
        begin
          if Text[I] = Quote[1] then
          begin
            if (I < N) and (Text[I + 1] = Quote[1]) then
            begin
              Field := Field + Quote;
              Inc(I, 2);
            end
            else
            begin
              Inc(I);
              Break;
            end;
          end
          else
          begin
            Field := Field + Text[I];
            Inc(I);
          end;
        end;
        { Ignora o que vier depois das aspas ate o separador. }
        while (I <= N) and (Text[I] <> Delim[1]) and (Text[I] <> #10) and
              (Text[I] <> #13) do
          Inc(I);
      end
      else
      begin
        while (I <= N) and (Text[I] <> Delim[1]) and (Text[I] <> #10) and
              (Text[I] <> #13) do
        begin
          Field := Field + Text[I];
          Inc(I);
        end;
      end;

      Row.Add(Field);

      if (I <= N) and (Text[I] = Delim[1]) then
        Inc(I)
      else if I <= N then
      begin
        if Text[I] = #13 then
          Inc(I);
        if (I <= N) and (Text[I] = #10) then
          Inc(I);
        EndRow;
      end;
    end;
    EndRow;

    if AOptions.ReadHeader and (Result.RowCount > 0) then
    begin
      Row := TStringList(Result.RowStrings(0));
      for I := 0 to Row.Count - 1 do
        Result.Columns.Add(Row[I]);
      { Remove a linha de cabecalho dos dados. }
      Result.FRows.Delete(0);
    end;
  finally
    Row.Free;
  end;
end;

end.
