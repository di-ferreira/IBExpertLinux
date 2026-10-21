program testfb;
{ Teste de integracao contra um servidor Firebird real.
  Uso:
    testfb --create  <host> <porta> <arquivo.fdb> <usuario> <senha>
    testfb --connect <host> <porta> <arquivo.fdb> <usuario> <senha>

  Cria (quando pedido) um banco, cria uma tabela de exemplo, insere linhas e
  exercita a sessao (metadados) e o executor (select materializado). }

{$mode objfpc}{$H+}

uses
  SysUtils, Classes, DB, sqldb, IBConnection, bufdataset,
  ibtypes, ibsqlutil, ibmetadata, ibdml, ibcsv, ibddl, ibcode, ibtools,
  ibschema, ibextract, ibsecurity, ibsession;

var
  Failures: Integer = 0;

procedure Check(const AWhat: string; ACondition: Boolean; const ADetail: string = '');
begin
  if ACondition then
    WriteLn('  ok   ', AWhat)
  else
  begin
    WriteLn('  FAIL ', AWhat, ' ', ADetail);
    Inc(Failures);
  end;
end;

function MakeProfile(const AHost, APort, ADB, AUser, APass: string): TConnectionProfile;
begin
  Result := TConnectionProfile.Create;
  Result.Host := AHost;
  Result.Port := StrToIntDef(APort, 3050);
  Result.Database := ADB;
  Result.User := AUser;
  Result.Password := APass;
  Result.Charset := 'UTF8';
  Result.Dialect := 3;
end;

procedure CreateDatabase(const AProfile: TConnectionProfile);
var
  Conn: TIBConnection;
  Tx: TSQLTransaction;
  Q: TSQLQuery;
begin
  Conn := TIBConnection.Create(nil);
  Tx := TSQLTransaction.Create(nil);
  Q := TSQLQuery.Create(nil);
  try
    Conn.DatabaseName := Format('%s/%d:%s', [AProfile.Host, AProfile.Port, AProfile.Database]);
    Conn.UserName := AProfile.User;
    Conn.Password := AProfile.Password;
    Conn.CharSet := AProfile.Charset;
    Conn.Dialect := AProfile.Dialect;
    EnsureClientLibrary;
    Conn.CreateDB;
    WriteLn('banco criado: ', AProfile.Database);

    Conn.Transaction := Tx;
    Tx.DataBase := Conn;
    Q.DataBase := Conn;
    Q.Transaction := Tx;
    Tx.StartTransaction;
    Q.SQL.Text :=
      'create table teste_ibstudio (' +
      '  id integer not null primary key, ' +
      '  nome varchar(60) character set utf8, ' +
      '  valor numeric(15,2), ' +
      '  qtd smallint, ' +
      '  obs blob sub_type text, ' +
      '  criado_em timestamp)';
    Q.ExecSQL;
    { Alguns servidores so tornam a tabela visivel depois do commit do DDL. }
    Tx.Commit;
    Tx.StartTransaction;
    Q.SQL.Text :=
      'insert into teste_ibstudio (id, nome, valor, qtd, criado_em) values ' +
      '(1, ''Ação'', 10.50, 3, ''2024-01-02 03:04:05'')';
    Q.ExecSQL;
    Q.SQL.Text :=
      'insert into teste_ibstudio (id, nome, valor, qtd, criado_em) values ' +
      '(2, ''Beta'', 20.00, 7, current_timestamp)';
    Q.ExecSQL;
    Q.SQL.Text :=
      'insert into teste_ibstudio (id, nome, valor, qtd, criado_em) values ' +
      '(3, ''Gama'', null, 0, null)';
    Q.ExecSQL;
    Tx.Commit;
  finally
    Q.Free;
    Tx.Free;
    Conn.Free;
  end;
end;

procedure TestSession(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Folder, TableNode: TMetadataNode;
  Fields: TStrings;
  I: Integer;
  Found: Boolean;
begin
  WriteLn('--- sessao / metadados ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);
    Check('conectado', S.Connected);
    WriteLn('  versao do servidor: ', S.ServerVersion);

    Folder := TMetadataNode.Create(mkTable, 'Tabelas', '');
    try
      S.FillFolder(Folder);
      Check('pasta Tabelas preenchida', Folder.Children.Count >= 1,
        Format('(%d)', [Folder.Children.Count]));
      Found := False;
      TableNode := nil;
      for I := 0 to Folder.Children.Count - 1 do
        if SameText(Folder.Children[I].Name, 'TESTE_IBSTUDIO') then
        begin
          Found := True;
          TableNode := Folder.Children[I];
        end;
      Check('tabela TESTE_IBSTUDIO listada', Found);

      if Found then
      begin
        S.LoadChildren(TableNode);
        Check('colunas carregadas', TableNode.Children.Count = 6,
          Format('(%d)', [TableNode.Children.Count]));
        for I := 0 to TableNode.Children.Count - 1 do
          WriteLn('    ', TableNode.Children[I].Name, ' : ', TableNode.Children[I].Detail);
      end;
    finally
      Folder.Free;
    end;

    { Cache usado pelo autocompletar. }
    Check('cache lista TESTE_IBSTUDIO',
      S.RelationNames.IndexOf('TESTE_IBSTUDIO') >= 0,
      Format('(%d relacoes)', [S.RelationNames.Count]));
    Fields := S.RelationFields('teste_ibstudio');
    Check('cache de campos (nome em minusculas)', Assigned(Fields) and (Fields.Count = 6),
      Format('(%d)', [Fields.Count]));
    if Assigned(Fields) and (Fields.Count > 0) then
      WriteLn('    campos: ', Fields.CommaText);
  finally
    S.Free;
  end;
end;

procedure TestExecutor(AProfile: TConnectionProfile);
var
  Exec: TIBExecutor;
  Buf: TResultBuffer;
  Stmts: TStatementArray;
  Out1: TExecOutcome;
  I: Integer;
begin
  WriteLn('--- executor / select ---');
  Exec := TIBExecutor.Create(AProfile, 100);
  Buf := TResultBuffer.Create(nil);
  try
    Exec.Open;
    Stmts := SplitStatements(
      'select id, nome, valor, qtd from teste_ibstudio order by id;');
    Check('script separado em 1 comando', Length(Stmts) = 1);
    Out1 := Exec.ExecuteOne(Stmts[0], Buf);
    Check('select sem erro', Out1.Succeeded, Out1.Error);
    Check('3 linhas', Out1.Rows = 3, Format('(%d)', [Out1.Rows]));
    Check('buffer aberto', Buf.Active);
    Check('3 registros no buffer', Buf.RecordCount = 3, Format('(%d)', [Buf.RecordCount]));
    Buf.First;
    for I := 0 to Buf.RecordCount - 1 do
    begin
      WriteLn('    ', Buf.Fields[0].AsString, ' | ', Buf.Fields[1].AsString,
        ' | ', Buf.Fields[2].AsString, ' | ', Buf.Fields[3].AsString);
      Buf.Next;
    end;
    Buf.First;
    Check('nome com acento', Buf.Fields[1].AsString = 'Ação', Buf.Fields[1].AsString);
    Buf.First;

    { DML: conta registros afetados. }
    Stmts := SplitStatements('update teste_ibstudio set qtd = qtd + 1 where id <= 2;');
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('update afetou 2', (Out1.Succeeded) and (Out1.Affected = 2),
      Format('(%d, %s)', [Out1.Affected, Out1.Error]));

    { Erro de SQL deve ser reportado, nao derrubar a sessao. }
    Stmts := SplitStatements('select * from tabela_que_nao_existe;');
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('erro reportado', not Out1.Succeeded);
    WriteLn('    erro: ', Out1.Error);

    Stmts := SplitStatements('select count(*) as n from teste_ibstudio;');
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('sessao continua utilizavel', Out1.Succeeded, Out1.Error);
  finally
    Buf.Free;
    Exec.Free;
  end;

  { DDL/DML precisam persistir: confere em uma conexao nova. }
  Exec := TIBExecutor.Create(AProfile, 100);
  try
    Exec.Open;
    Stmts := SplitStatements('recreate table criada_pelo_app (id integer, nome varchar(10));');
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('ddl executado', Out1.Succeeded, Out1.Error);
  finally
    Exec.Free;
  end;

  Exec := TIBExecutor.Create(AProfile, 100);
  try
    Exec.Open;
    Stmts := SplitStatements(
      'insert into criada_pelo_app (id, nome) values (1, ''x'');' +
      'select count(*) as n from criada_pelo_app;');
    Check('script com 2 comandos', Length(Stmts) = 2);
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('insert executado', Out1.Succeeded, Out1.Error);
    Out1 := Exec.ExecuteOne(Stmts[1], nil);
    Check('tabela criada visivel em outra conexao', Out1.Succeeded, Out1.Error);
    Stmts := SplitStatements('drop table criada_pelo_app;');
    Out1 := Exec.ExecuteOne(Stmts[0], nil);
    Check('drop executado', Out1.Succeeded, Out1.Error);
  finally
    Exec.Free;
  end;
end;

function CountId99(AConn: TIBConnection; ATx: TSQLTransaction): Integer;
var
  Q: TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.DataBase := AConn;
    Q.Transaction := ATx;
    Q.SQL.Text := 'select count(*) as n from teste_ibstudio where id = 99';
    Q.Open;
    Result := Q.Fields[0].AsInteger;
    Q.Close;
  finally
    Q.Free;
  end;
end;

procedure TestExecuteParams(AProfile: TConnectionProfile);
var
  Exec: TIBExecutor;
  Params: TParams;
  N: Int64;
begin
  WriteLn('--- execucao parametrizada ---');
  Exec := TIBExecutor.Create(AProfile, 100);
  try
    Exec.Open;

    Params := TParams.Create(nil);
    try
      Params.CreateParam(ftInteger, 'id', ptInput);
      Params.CreateParam(ftString, 'nome', ptInput);
      Params.ParamByName('id').AsInteger := 99;
      Params.ParamByName('nome').AsString := 'Parametro';
      N := Exec.ExecuteParams(
        'insert into teste_ibstudio (id, nome) values (:id, :nome)', Params, False);
      Check('insert parametrizado afetou 1 linha', N = 1, Format('(%d)', [N]));
    finally
      Params.Free;
    end;

    Exec.Rollback;
    Check('rollback desfez o insert',
      CountId99(Exec.Connection, Exec.Transaction) = 0);

    Params := TParams.Create(nil);
    try
      Params.CreateParam(ftInteger, 'id', ptInput);
      Params.CreateParam(ftString, 'nome', ptInput);
      Params.ParamByName('id').AsInteger := 99;
      Params.ParamByName('nome').AsString := 'Parametro';
      Exec.ExecuteParams(
        'insert into teste_ibstudio (id, nome) values (:id, :nome)', Params, True);
    finally
      Params.Free;
    end;
    Check('commit manteve o insert',
      CountId99(Exec.Connection, Exec.Transaction) = 1);

    Check('delete parametrizado',
      Exec.ExecuteParams('delete from teste_ibstudio where id = 99', nil, True) = 1);
  finally
    Exec.Free;
  end;
end;

procedure TestDmlGeneration(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Keys: TStrings;
  Metas: TFieldMetaArray;
  Fields, KeyVals: TFieldValueArray;
  Q: TSQLQuery;
  SQL: string;
  N: Int64;
  Antes: Integer;
begin
  WriteLn('--- edicao de dados (DML gerado) ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);

    Keys := S.PrimaryKeyColumns('TESTE_IBSTUDIO');
    try
      Check('chave primaria descoberta',
        Assigned(Keys) and (Keys.Count = 1) and SameText(Keys[0], 'ID'),
        Format('(%d colunas)', [Keys.Count]));
    finally
      Keys.Free;
    end;

    Metas := S.RelationFieldMetas('TESTE_IBSTUDIO');
    Check('metadados dos campos', Length(Metas) = 6, Format('(%d)', [Length(Metas)]));

    { Valor atual, para restaurar depois do teste. }
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text := 'select qtd from teste_ibstudio where id = 1';
      Q.Open;
      Antes := Q.Fields[0].AsInteger;
      Q.Close;
    finally
      Q.Free;
    end;

    SetLength(Fields, 1);
    Fields[0].Name := 'QTD';
    Fields[0].Value := '42';
    Fields[0].IsNumeric := True;
    SetLength(KeyVals, 1);
    KeyVals[0].Name := 'ID';
    KeyVals[0].Value := '1';
    KeyVals[0].IsNumeric := True;

    SQL := BuildUpdate('TESTE_IBSTUDIO', Fields, KeyVals);
    N := S.Execute(SQL, nil, False);
    Check('update gerado afetou 1 linha', N = 1, SQL);
    S.Commit;

    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text := 'select qtd from teste_ibstudio where id = 1';
      Q.Open;
      Check('valor gravado', Q.Fields[0].AsInteger = 42,
        Q.Fields[0].AsString);
      Q.Close;
    finally
      Q.Free;
    end;

    { Restaura o valor original. }
    Fields[0].Value := IntToStr(Antes);
    S.Execute(BuildUpdate('TESTE_IBSTUDIO', Fields, KeyVals), nil, True);

    { Insert e delete gerados a partir dos mesmos blocos. }
    SetLength(Fields, 2);
    Fields[0].Name := 'ID';
    Fields[0].Value := '500';
    Fields[0].IsNumeric := True;
    Fields[1].Name := 'NOME';
    Fields[1].Value := 'Inserido';
    N := S.Execute(BuildInsert('TESTE_IBSTUDIO', Fields), nil, True);
    Check('insert gerado afetou 1 linha', N = 1, Format('(%d)', [N]));

    SetLength(KeyVals, 1);
    KeyVals[0].Name := 'ID';
    KeyVals[0].Value := '500';
    KeyVals[0].IsNumeric := True;
    N := S.Execute(BuildDelete('TESTE_IBSTUDIO', KeyVals), nil, True);
    Check('delete gerado afetou 1 linha', N = 1, Format('(%d)', [N]));
  finally
    S.Free;
  end;
end;

procedure TestCsvImport(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Q: TSQLQuery;
  Table: TCsvTable;
  FileStream: TFileStream;
  OutStream: TFileStream;
  Options: TCsvOptions;
  CsvFile: string;
  SQL: string;
  Content: string;
  R, C, N: Integer;
  Params: TParams;
begin
  WriteLn('--- importacao de CSV ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);
    S.Execute('recreate table import_teste (id integer, nome varchar(30))', nil, True);

    CsvFile := IncludeTrailingPathDelimiter(GetTempDir) + 'ibstudio-import.csv';
    DefaultCsvOptions(Options);
    Options.NullToken := 'NULL';

    OutStream := TFileStream.Create(CsvFile, fmCreate);
    try
      Content := 'id;nome'#13#10'1;Ana'#13#10'2;Bruno'#13#10'3;NULL'#13#10;
      OutStream.WriteBuffer(Content[1], Length(Content));
    finally
      OutStream.Free;
    end;

    FileStream := TFileStream.Create(CsvFile, fmOpenRead or fmShareDenyNone);
    try
      Table := ReadCsv(FileStream, Options);
    finally
      FileStream.Free;
    end;
    try
      Check('csv lido com 3 linhas', Table.RowCount = 3,
        Format('(%d)', [Table.RowCount]));
      Check('colunas do csv', Table.ColumnCount = 2,
        Format('(%d)', [Table.ColumnCount]));

      N := 0;
      for R := 0 to Table.RowCount - 1 do
      begin
        Params := TParams.Create(nil);
        try
          Params.CreateParam(ftInteger, 'p0', ptInput);
          Params.CreateParam(ftString, 'p1', ptInput);
          Params.ParamByName('p0').AsInteger := StrToInt(Table.Cell(R, 0));
          if Table.Cell(R, 1) = Options.NullToken then
            Params.ParamByName('p1').Clear
          else
            Params.ParamByName('p1').AsString := Table.Cell(R, 1);
          SQL := 'insert into import_teste (id, nome) values (:p0, :p1)';
          S.Execute(SQL, Params, False);
          Inc(N);
        finally
          Params.Free;
        end;
      end;
      S.Commit;
      Check('3 linhas importadas', N = 3, Format('(%d)', [N]));

      Q := TSQLQuery.Create(nil);
      try
        Q.DataBase := S.Connection;
        Q.Transaction := S.Transaction;
        Q.SQL.Text := 'select count(*) as n from import_teste';
        Q.Open;
        Check('tabela com 3 registros', Q.Fields[0].AsInteger = 3,
          Q.Fields[0].AsString);
        Q.Close;
      finally
        Q.Free;
      end;
    finally
      Table.Free;
    end;

    S.Execute('drop table import_teste', nil, True);
  finally
    S.Free;
  end;
  DeleteFile(CsvFile);
end;

procedure TestTableEditor(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  M, M2, M3: TTableModel;
  F: TFieldDefModel;
  Stmts: TStringArray;
  Script, Err: string;
  I: Integer;
  Q: TSQLQuery;
  Found: Boolean;
begin
  WriteLn('--- editor de tabela (DDL) ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);

    { Tabela de execucoes anteriores: descarta antes de criar. }
    S.ExecuteScript(DropTableSQL('TABELA_TESTE'), Err);

    M := Default(TTableModel);
    M.Name := 'TABELA_TESTE';
    F := Default(TFieldDefModel);
    F.Name := 'ID';
    F.TypeName := 'INTEGER';
    F.NotNull := True;
    F.PrimaryKeyPos := 1;
    SetLength(M.Fields, 1);
    M.Fields[0] := F;
    F := Default(TFieldDefModel);
    F.Name := 'NOME';
    F.TypeName := 'VARCHAR';
    F.Length := 60;
    SetLength(M.Fields, 2);
    M.Fields[1] := F;

    Stmts := CreateTableSQL(M);
    Script := '';
    for I := 0 to High(Stmts) do
      Script := Script + Stmts[I] + LineEnding;

    Check('script de criacao executado', S.ExecuteScript(Script, Err), Err);

    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text :=
        'select count(*) as n from rdb$relations where rdb$relation_name = ''TABELA_TESTE''';
      Q.Open;
      Check('tabela criada', Q.Fields[0].AsInteger = 1,
        Q.Fields[0].AsString);
      Q.Close;
    finally
      Q.Free;
    end;

    { Le a estrutura de volta do catalogo. }
    M2 := S.LoadTableModel('TABELA_TESTE');
    Check('modelo com 2 campos', Length(M2.Fields) = 2,
      Format('(%d)', [Length(M2.Fields)]));
    Check('chave primaria com 1 coluna',
      Length(PrimaryKeyFields(M2)) = 1,
      Format('(%d)', [Length(PrimaryKeyFields(M2))]));
    Found := False;
    for I := 0 to High(M2.Fields) do
      if SameText(M2.Fields[I].Name, 'NOME') then
        Found := M2.Fields[I].TypeName = 'VARCHAR';
    Check('campo NOME do tipo certo', Found);

    { Altera a estrutura: nova coluna. }
    M3 := M2;
    SetLength(M3.Fields, 3);
    M3.Fields[2] := Default(TFieldDefModel);
    M3.Fields[2].Name := 'OBS';
    M3.Fields[2].TypeName := 'VARCHAR';
    M3.Fields[2].Length := 30;
    Stmts := AlterTableSQL(M2, M3);
    Script := '';
    for I := 0 to High(Stmts) do
      Script := Script + Stmts[I] + LineEnding;
    Check('script de alteracao executado', S.ExecuteScript(Script, Err), Err);

    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text :=
        'select count(*) as n from rdb$relation_fields ' +
        'where rdb$relation_name = ''TABELA_TESTE'' and rdb$field_name = ''OBS''';
      Q.Open;
      Check('coluna adicionada', Q.Fields[0].AsInteger = 1,
        Q.Fields[0].AsString);
      Q.Close;
    finally
      Q.Free;
    end;

    Check('tabela removida', S.ExecuteScript(DropTableSQL('TABELA_TESTE'), Err), Err);
  finally
    S.Free;
  end;
end;

procedure TestCodeEditor(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Obj: TCodeObject;
  Q: TSQLQuery;
  Err, SQL: string;
begin
  WriteLn('--- editores de codigo ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);

    SQL := CreateOrAlterSQL(ckProcedure, 'PROC_TESTE',
      'AS' + LineEnding + 'begin' + LineEnding + '  exit;' + LineEnding + 'end', '');
    Check('procedure criada', S.ExecuteStatement(SQL, Err), Err);
    Obj := S.LoadCodeObject(ckProcedure, 'PROC_TESTE');
    Check('procedure lida do catalogo', Obj.Exists);
    Check('fonte da procedure', Pos('exit', Obj.Source) > 0, Obj.Source);
    Check('procedure removida',
      S.ExecuteStatement(DropObjectSQL(ckProcedure, 'PROC_TESTE'), Err), Err);

    SQL := CreateOrAlterSQL(ckTrigger, 'TRG_TESTE',
      'AS' + LineEnding + 'begin' + LineEnding + 'end',
      'for TESTE_IBSTUDIO after insert ');
    Check('trigger criado', S.ExecuteStatement(SQL, Err), Err);
    Obj := S.LoadCodeObject(ckTrigger, 'TRG_TESTE');
    Check('trigger lido do catalogo', Obj.Exists);
    Check('prefixo do trigger', Pos('TESTE_IBSTUDIO', Obj.Prefix) > 0,
      Obj.Prefix);
    Check('evento do trigger', Pos('after insert', Obj.Prefix) > 0,
      Obj.Prefix);
    Check('trigger removido',
      S.ExecuteStatement(DropObjectSQL(ckTrigger, 'TRG_TESTE'), Err), Err);

    SQL := CreateOrAlterSQL(ckView, 'VW_TESTE', 'select id from teste_ibstudio', '');
    Check('view criada', S.ExecuteStatement(SQL, Err), Err);
    { O Firebird 2.5 nao guarda o texto da view: confere no catalogo. }
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text := 'select count(*) as n from rdb$relations ' +
        'where rdb$relation_name = ''VW_TESTE'' and rdb$view_blr is not null';
      Q.Open;
      Check('view no catalogo', Q.Fields[0].AsInteger = 1,
        Q.Fields[0].AsString);
      Q.Close;
    finally
      Q.Free;
    end;
    Check('view removida',
      S.ExecuteStatement(DropObjectSQL(ckView, 'VW_TESTE'), Err), Err);

    SQL := CreateOrAlterSQL(ckException, 'EXC_TESTE', 'erro de teste', '');
    Check('exception criada', S.ExecuteStatement(SQL, Err), Err);
    Check('exception removida',
      S.ExecuteStatement(DropObjectSQL(ckException, 'EXC_TESTE'), Err), Err);

    SQL := CreateOrAlterSQL(ckDomain, 'DOM_TESTE', 'varchar(30)', '');
    Check('domain criado', S.ExecuteStatement(SQL, Err), Err);
    Obj := S.LoadCodeObject(ckDomain, 'DOM_TESTE');
    Check('domain lido do catalogo',
      Obj.Exists and (Pos('varchar', Obj.Source) > 0), Obj.Source);
    Check('domain removido',
      S.ExecuteStatement(DropObjectSQL(ckDomain, 'DOM_TESTE'), Err), Err);
  finally
    S.Free;
  end;
end;

procedure TestAdminTools(AProfile: TConnectionProfile);
var
  Exe: string;
  Args: TStringArray;
  Res: TToolResult;
  O: TToolOptions;
  BkFile, NewDb: string;
  Target: TConnectionProfile;
begin
  WriteLn('--- ferramentas administrativas ---');
  Exe := FindFirebirdTool('gbak');
  if Exe = '' then
  begin
    WriteLn('  (gbak nao encontrado: teste ignorado)');
    Exit;
  end;

  BkFile := IncludeTrailingPathDelimiter(GetTempDir) + 'ibstudio-backup.fbk';
  NewDb := IncludeTrailingPathDelimiter(GetTempDir) + 'ibstudio-restored.fdb';
  DeleteFile(BkFile);
  DeleteFile(NewDb);

  { Backup. }
  O := Default(TToolOptions);
  O.Verbose := True;
  Args := BuildBackupArgs(AProfile, BkFile, O);
  Res := RunTool(Exe, Args, AProfile.User, AProfile.Password);
  try
    Check('backup executado', Res.ExitCode = 0, Res.Output.Text);
    Check('arquivo de backup criado', FileExists(BkFile));
  finally
    Res.Free;
  end;

  { Restore em um banco novo. }
  Target := AProfile.Clone;
  try
    Target.Database := NewDb;
    O.ReplaceExisting := True;
    Args := BuildRestoreArgs(Target, BkFile, O);
    Res := RunTool(Exe, Args, Target.User, Target.Password);
    try
      Check('restore executado', Res.ExitCode = 0, Res.Output.Text);
      Check('banco restaurado', FileExists(NewDb));
    finally
      Res.Free;
    end;

    { Validacao com gfix. }
    Exe := FindFirebirdTool('gfix');
    if Exe <> '' then
    begin
      Args := BuildValidateArgs(Target, Default(TToolOptions));
      Res := RunTool(Exe, Args, Target.User, Target.Password);
      try
        Check('validacao concluida', Res.ExitCode = 0, Res.Output.Text);
      finally
        Res.Free;
      end;
    end;
  finally
    Target.Free;
  end;

  DeleteFile(BkFile);
  { O servidor cria o banco restaurado com o dono dele: a remocao pode
    falhar; o proximo restore usa a opcao de substituicao. }
  DeleteFile(NewDb);
end;

procedure TestExtract(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Model: TSchemaModel;
  Options: TExtractOptions;
  Script: TStringArray;
  Text, Err: string;
  I: Integer;
begin
  WriteLn('--- extracao de metadados ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);
    S.ExecuteStatement(
      'create or alter procedure PROC_EXTR as begin exit; end', Err);
    S.ExecuteStatement(
      'create or alter trigger TRG_EXTR for TESTE_IBSTUDIO after insert ' +
      'as begin end', Err);

    Model := S.LoadSchemaModel;
    Check('tabelas no modelo', Length(Model.Tables) >= 1,
      Format('(%d)', [Length(Model.Tables)]));

    DefaultExtractOptions(Options);
    Script := ExtractScript(Model, Options);
    Text := '';
    for I := 0 to High(Script) do
      Text := Text + Script[I] + LineEnding;

    Check('tabela no script', Pos('create table TESTE_IBSTUDIO', Text) > 0);
    Check('procedure no script', Pos('create or alter procedure PROC_EXTR', Text) > 0);
    Check('trigger no script', Pos('create or alter trigger TRG_EXTR', Text) > 0);
    Check('evento do trigger no script', Pos('after insert', Text) > 0);

    S.ExecuteStatement('drop trigger TRG_EXTR', Err);
    S.ExecuteStatement('drop procedure PROC_EXTR', Err);
  finally
    S.Free;
  end;
end;

procedure TestAssistant(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Params: TStringArray;
  Err, Desc: string;
begin
  WriteLn('--- assistente do editor ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);

    S.ExecuteStatement(
      'create or alter procedure PROC_ASSIST (p1 integer, p2 varchar(10)) ' +
      'as begin exit; end', Err);
    S.ExecuteStatement(
      'comment on procedure PROC_ASSIST is ''procedura de teste''', Err);
    S.ExecuteStatement(
      'comment on column TESTE_IBSTUDIO.NOME is ''nome do cliente''', Err);

    Params := S.ProcedureParameters('PROC_ASSIST');
    Check('parametros da procedure', Length(Params) = 2,
      Format('(%d)', [Length(Params)]));
    if Length(Params) = 2 then
      Check('ordem dos parametros', SameText(Params[0], 'P1') and
        SameText(Params[1], 'P2'), Params[0] + ',' + Params[1]);

    Desc := S.DescriptionOf('TESTE_IBSTUDIO', 'NOME');
    Check('descricao do campo', Desc = 'nome do cliente', Desc);

    Desc := S.DescriptionOf('TESTE_IBSTUDIO', '');
    Check('descricao vazia quando nao existe', Desc = '', Desc);

    S.ExecuteStatement('drop procedure PROC_ASSIST', Err);
  finally
    S.Free;
  end;
end;

procedure TestSecurity(AProfile: TConnectionProfile);
var
  S: TIBStudioSession;
  Err: string;
  L: TStringList;
  I: Integer;
  Found: Boolean;
begin
  WriteLn('--- usuarios e permissoes ---');
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);

    Check('papel criado',
      S.ExecuteStatement(BuildCreateRoleSQL('PAPEL_TESTE'), Err), Err);
    Check('grant aplicado', S.ExecuteStatement(
      BuildGrantSQL('table', 'TESTE_IBSTUDIO', 'SELECT', 'PAPEL_TESTE', nil,
        False), Err), Err);

    L := S.ListObjectPrivileges('TESTE_IBSTUDIO');
    try
      Found := False;
      for I := 0 to L.Count - 1 do
        if Pos('PAPEL_TESTE', L[I]) > 0 then
          Found := True;
      Check('privilegio concedido', Found, L.Text);
    finally
      L.Free;
    end;

    Check('revoke aplicado', S.ExecuteStatement(
      BuildRevokeSQL('table', 'TESTE_IBSTUDIO', 'SELECT', 'PAPEL_TESTE', nil),
      Err), Err);
    Check('papel removido',
      S.ExecuteStatement(BuildDropRoleSQL('PAPEL_TESTE'), Err), Err);

    L := S.ListUsers;
    try
      Check('lista de usuarios', L.Count >= 1, Format('(%d)', [L.Count]));
    finally
      L.Free;
    end;
    L := S.ListRoles;
    try
      Check('lista de papeis obtida', L.Count >= 0);
    finally
      L.Free;
    end;
    L := S.ActiveSessions;
    try
      Check('sessoes ativas listadas', L.Count >= 1, Format('(%d)', [L.Count]));
    finally
      L.Free;
    end;
  finally
    S.Free;
  end;
end;

var
  Mode, Host, Port, DBFile, User, Pass: string;
  Profile: TConnectionProfile;
begin
  if ParamCount < 6 then
  begin
    WriteLn('uso: testfb --create|--connect <host> <porta> <arquivo.fdb> <usuario> <senha>');
    Halt(2);
  end;
  Mode := ParamStr(1);
  Host := ParamStr(2);
  Port := ParamStr(3);
  DBFile := ParamStr(4);
  User := ParamStr(5);
  Pass := ParamStr(6);

  Profile := MakeProfile(Host, Port, DBFile, User, Pass);
  try
    try
      if Mode = '--create' then
        CreateDatabase(Profile);
      TestSession(Profile);
      TestExecutor(Profile);
      TestExecuteParams(Profile);
      TestDmlGeneration(Profile);
      TestCsvImport(Profile);
      TestTableEditor(Profile);
      TestCodeEditor(Profile);
      TestAdminTools(Profile);
      TestExtract(Profile);
      TestAssistant(Profile);
      TestSecurity(Profile);
    except
      on E: Exception do
      begin
        WriteLn('EXCECAO: ', E.ClassName, ': ', E.Message);
        Inc(Failures);
      end;
    end;
  finally
    Profile.Free;
  end;

  WriteLn;
  if Failures = 0 then
  begin
    WriteLn('TODOS OS TESTES DE INTEGRACAO PASSARAM');
    Halt(0);
  end
  else
  begin
    WriteLn(Failures, ' FALHA(S)');
    Halt(1);
  end;
end.
