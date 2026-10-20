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
  ibtypes, ibsqlutil, ibmetadata, ibsession;

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
