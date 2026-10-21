unit ibextract;
{ Gera o script de criacao de um banco a partir do modelo do esquema.
  Nao depende de LCL nem de banco: recebe o modelo e devolve os comandos. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil, ibddl, ibcode, ibschema;

type
  TExtractOptions = record
    IncludeDescriptions: Boolean;
    IncludeGenerators: Boolean;
    IncludeGrants: Boolean;
    IncludeIndexes: Boolean;
    IncludeForeignKeys: Boolean;
    IncludeViews: Boolean;
    IncludeProcedures: Boolean;
    IncludeTriggers: Boolean;
    UseSetTerm: Boolean;
    CommitEvery: Integer;   { 0 = nunca }
  end;

  { Um objeto do esquema e os comandos que o recriam. }
  TExtractObject = record
    FileName: string;
    Lines: TStringArray;
  end;
  TExtractObjectArray = array of TExtractObject;

{ Opcoes padrao: tudo, exceto grants e SET TERM. }
procedure DefaultExtractOptions(out AOptions: TExtractOptions);

{ Objetos do esquema com os comandos que os recriam. }
function ExtractObjects(const AModel: TSchemaModel;
  const AOptions: TExtractOptions): TExtractObjectArray;

{ Script completo (os objetos na ordem de dependencia). }
function ExtractScript(const AModel: TSchemaModel;
  const AOptions: TExtractOptions): TStringArray;

{ Grava o script: em um arquivo so ou em um arquivo por objeto. }
procedure SaveExtractFiles(const AObjects: TExtractObjectArray;
  const ADirectory: string; AOneFilePerObject: Boolean);

implementation

procedure DefaultExtractOptions(out AOptions: TExtractOptions);
begin
  AOptions.IncludeDescriptions := True;
  AOptions.IncludeGenerators := True;
  AOptions.IncludeGrants := False;
  AOptions.IncludeIndexes := True;
  AOptions.IncludeForeignKeys := True;
  AOptions.IncludeViews := True;
  AOptions.IncludeProcedures := True;
  AOptions.IncludeTriggers := True;
  AOptions.UseSetTerm := False;
  AOptions.CommitEvery := 0;
end;

function ToArray(const ALines: TStrings): TStringArray;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALines.Count);
  for I := 0 to ALines.Count - 1 do
    Result[I] := ALines[I];
end;

function QuotedLiteral(const AValue: string): string;
begin
  Result := '''' + StringReplace(AValue, '''', '''''', [rfReplaceAll]) + '''';
end;

function CommentSQL(const AKind, AName, ADescription: string): string;
begin
  Result := 'comment on ' + AKind + ' ' + QuoteIdentifier(AName) + ' is ' +
    QuotedLiteral(ADescription) + ';';
end;

function NewObject(const AFileName: string; const ALines: TStrings): TExtractObject;
begin
  Result.FileName := AFileName;
  Result.Lines := ToArray(ALines);
end;

function ExtractObjects(const AModel: TSchemaModel;
  const AOptions: TExtractOptions): TExtractObjectArray;
var
  L: TStringList;
  I, J, K, Count: Integer;
  Table: TTableModel;
  Stmts: TStringArray;
  Prefix, S: string;
  Names: TStringArray;
begin
  SetLength(Result, 0);
  Count := 0;
  L := TStringList.Create;
  try
    { Dominios. }
    for I := 0 to High(AModel.Domains) do
    begin
      L.Clear;
      S := 'create domain ' + QuoteIdentifier(AModel.Domains[I].Name) + ' as ' +
        AModel.Domains[I].TypeName;
      if AModel.Domains[I].NotNull then
        S := S + ' not null';
      if Trim(AModel.Domains[I].DefaultValue) <> '' then
        S := S + ' default ' + Trim(AModel.Domains[I].DefaultValue);
      L.Add(S + ';');
      if AOptions.IncludeDescriptions and
         (Trim(AModel.Domains[I].Description) <> '') then
        L.Add(CommentSQL('domain', AModel.Domains[I].Name,
          AModel.Domains[I].Description));
      Inc(Count);
      SetLength(Result, Count);
      Result[Count - 1] := NewObject('domain_' + AModel.Domains[I].Name + '.sql', L);
    end;

    { Exceptions. }
    for I := 0 to High(AModel.Exceptions) do
    begin
      L.Clear;
      L.Add('create exception ' + QuoteIdentifier(AModel.Exceptions[I].Name) +
        ' ' + QuotedLiteral(AModel.Exceptions[I].Message) + ';');
      Inc(Count);
      SetLength(Result, Count);
      Result[Count - 1] := NewObject('exception_' + AModel.Exceptions[I].Name +
        '.sql', L);
    end;

    { Geradores. }
    if AOptions.IncludeGenerators then
      for I := 0 to High(AModel.Generators) do
      begin
        L.Clear;
        L.Add('create sequence ' + QuoteIdentifier(AModel.Generators[I].Name) + ';');
        L.Add('set generator ' + QuoteIdentifier(AModel.Generators[I].Name) +
          ' to ' + IntToStr(AModel.Generators[I].InitialValue) + ';');
        Inc(Count);
        SetLength(Result, Count);
        Result[Count - 1] := NewObject('sequence_' + AModel.Generators[I].Name +
          '.sql', L);
      end;

    { Tabelas (com chave primaria, indices e chaves estrangeiras). }
    Names := SortedTableNames(AModel);
    for K := 0 to High(Names) do
    begin
      I := FindTable(AModel, Names[K]);
      if I < 0 then
        Continue;
      Table := AModel.Tables[I];
      if not AOptions.IncludeIndexes then
        Table.Indexes := nil;
      if not AOptions.IncludeForeignKeys then
        Table.ForeignKeys := nil;
      L.Clear;
      Stmts := CreateTableSQL(Table);
      for J := 0 to High(Stmts) do
        L.Add(Stmts[J]);
      if AOptions.IncludeDescriptions then
        for J := 0 to High(Table.Fields) do
          if Trim(Table.Fields[J].Description) <> '' then
            L.Add(CommentSQL('column', Table.Name + '.' + Table.Fields[J].Name,
              Table.Fields[J].Description));
      Inc(Count);
      SetLength(Result, Count);
      Result[Count - 1] := NewObject('table_' + Table.Name + '.sql', L);
    end;

    { Views. }
    if AOptions.IncludeViews then
      for I := 0 to High(AModel.Views) do
      begin
        if Trim(AModel.Views[I].Source) = '' then
          Continue;
        L.Clear;
        Prefix := '';
        if Length(AModel.Views[I].Columns) > 0 then
        begin
          Prefix := '(';
          for J := 0 to High(AModel.Views[I].Columns) do
          begin
            if J > 0 then
              Prefix := Prefix + ', ';
            Prefix := Prefix + QuoteIdentifier(AModel.Views[I].Columns[J]);
          end;
          Prefix := Prefix + ') ';
        end;
        L.Add('create or alter view ' + QuoteIdentifier(AModel.Views[I].Name) +
          ' ' + Prefix + 'as ' + Trim(AModel.Views[I].Source) + ';');
        Inc(Count);
        SetLength(Result, Count);
        Result[Count - 1] := NewObject('view_' + AModel.Views[I].Name + '.sql', L);
      end;

    { Procedures. }
    if AOptions.IncludeProcedures then
      for I := 0 to High(AModel.Procedures) do
      begin
        if Trim(AModel.Procedures[I].Source) = '' then
          Continue;
        L.Clear;
        L.Add('create or alter procedure ' +
          QuoteIdentifier(AModel.Procedures[I].Name) + ' as ' +
          Trim(AModel.Procedures[I].Source) + ';');
        Inc(Count);
        SetLength(Result, Count);
        Result[Count - 1] := NewObject('procedure_' +
          AModel.Procedures[I].Name + '.sql', L);
      end;

    { Triggers. }
    if AOptions.IncludeTriggers then
      for I := 0 to High(AModel.Triggers) do
      begin
        if Trim(AModel.Triggers[I].Source) = '' then
          Continue;
        L.Clear;
        L.Add('create or alter trigger ' +
          QuoteIdentifier(AModel.Triggers[I].Name) + ' ' +
          AModel.Triggers[I].Prefix + Trim(AModel.Triggers[I].Source) + ';');
        Inc(Count);
        SetLength(Result, Count);
        Result[Count - 1] := NewObject('trigger_' +
          AModel.Triggers[I].Name + '.sql', L);
      end;

    { Grants (vem prontos do modelo). }
    if AOptions.IncludeGrants then
      for I := 0 to High(AModel.Grants) do
      begin
        L.Clear;
        L.Add(AModel.Grants[I]);
        Inc(Count);
        SetLength(Result, Count);
        Result[Count - 1] := NewObject('grants.sql', L);
      end;
  finally
    L.Free;
  end;
end;

function ExtractScript(const AModel: TSchemaModel;
  const AOptions: TExtractOptions): TStringArray;
var
  Objects: TExtractObjectArray;
  I, J, Count: Integer;
  L: TStringList;
begin
  L := TStringList.Create;
  try
    Objects := ExtractObjects(AModel, AOptions);
    for I := 0 to High(Objects) do
      for J := 0 to High(Objects[I].Lines) do
        L.Add(Objects[I].Lines[J]);

    { COMMIT WORK periodico. }
    if AOptions.CommitEvery > 0 then
    begin
      Count := 0;
      for I := 0 to L.Count - 1 do
      begin
        Inc(Count);
        if (Count mod AOptions.CommitEvery) = 0 then
          L.Insert(I + 1, 'COMMIT WORK;');
      end;
    end;

    Result := ToArray(L);
  finally
    L.Free;
  end;
end;

procedure SaveExtractFiles(const AObjects: TExtractObjectArray;
  const ADirectory: string; AOneFilePerObject: Boolean);
var
  I, J: Integer;
  F: TFileStream;
  Text: string;
  Name: string;
begin
  ForceDirectories(ADirectory);
  if not AOneFilePerObject then
  begin
    Text := '';
    for I := 0 to High(AObjects) do
      for J := 0 to High(AObjects[I].Lines) do
        Text := Text + AObjects[I].Lines[J] + LineEnding;
    F := TFileStream.Create(IncludeTrailingPathDelimiter(ADirectory) +
      'schema.sql', fmCreate);
    try
      if Text <> '' then
        F.WriteBuffer(Text[1], Length(Text));
    finally
      F.Free;
    end;
    Exit;
  end;

  for I := 0 to High(AObjects) do
  begin
    Text := '';
    for J := 0 to High(AObjects[I].Lines) do
      Text := Text + AObjects[I].Lines[J] + LineEnding;
    Name := AObjects[I].FileName;
    F := TFileStream.Create(IncludeTrailingPathDelimiter(ADirectory) + Name,
      fmCreate);
    try
      if Text <> '' then
        F.WriteBuffer(Text[1], Length(Text));
    finally
      F.Free;
    end;
  end;
end;

end.
