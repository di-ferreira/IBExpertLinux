program uismoke;
{ Teste de fumaca da interface: monta o formulario principal, conecta pelo
  mesmo caminho do botao "Conectar", confere a arvore e executa uma consulta
  pela aba SQL (thread + grade).

  Uso: uismoke <host> <porta> <banco.fdb> <usuario> <senha> }

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}cthreads,{$ENDIF}
  Interfaces, Forms, SysUtils, Classes, Controls, ComCtrls, ExtCtrls, DB, sqldb,
  ibtypes, ibsession, ibcsv, ibddl, ibcode, uMain, uSqlTab, uSqlPreview,
  uEditRecord, uTableEditor, uCodeEditor, uAdmin, uExtract, uSecurity,
  uSessions;

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
  Flush(Output);
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

procedure PumpFor(AMs: Integer);
var
  Until_: QWord;
begin
  Until_ := GetTickCount64 + QWord(AMs);
  while GetTickCount64 < Until_ do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;
end;

{ Le o nome do registro 1 direto do banco. }
function RowName(const AProfile: TConnectionProfile): string;
var
  S: TIBStudioSession;
  Q: TSQLQuery;
begin
  Result := '';
  S := TIBStudioSession.Create;
  try
    S.Connect(AProfile);
    Q := TSQLQuery.Create(nil);
    try
      Q.DataBase := S.Connection;
      Q.Transaction := S.Transaction;
      Q.SQL.Text := 'select nome from teste_ibstudio where id = 1';
      Q.Open;
      Result := Q.Fields[0].AsString;
      Q.Close;
    finally
      Q.Free;
    end;
  finally
    S.Free;
  end;
end;

var
  Form: TfrmMain;
  Profile: TConnectionProfile;
  Tab: TSqlTabFrame;
  Preview: TfrmSqlPreview;
  EditValues: TStringList;
  DlgEdit: TfrmEditRecord;
  Metas: TFieldMetaArray;
  Init: TStringList;
  CsvFile: string;
  CsvOpts: TCsvOptions;
  CsvStream: TFileStream;
  CsvTable: TCsvTable;
  Sess: TIBStudioSession;
  DlgTable: TfrmTableEditor;
  M: TTableModel;
  Frame: TCodeEditorFrame;
  DlgAdmin: TfrmAdmin;
  DlgExtract: TfrmExtract;
  DlgSecurity: TfrmSecurity;
  DlgSessions: TfrmSessions;
  Obj: TCodeObject;
  Err: string;
  Wait, I: Integer;
  Folder, TableNode: TTreeNode;
  Allow, FoundTable: Boolean;
begin
  if ParamCount < 5 then
  begin
    WriteLn('uso: uismoke <host> <porta> <banco.fdb> <usuario> <senha>');
    Halt(2);
  end;

  WriteLn('iniciando...');
  Flush(Output);
  Profile := MakeProfile(ParamStr(1), ParamStr(2), ParamStr(3),
    ParamStr(4), ParamStr(5));
  Application.Initialize;
  WriteLn('widgetset inicializado');
  Flush(Output);
  Form := TfrmMain.Create(nil);
  WriteLn('formulario criado');
  Flush(Output);
  try
    WriteLn('--- conexao pela UI ---');
    Form.ConnectTo(Profile);
    PumpFor(300);
    Check('arvore populada', Form.Tree.Items.Count > 0,
      Format('(%d)', [Form.Tree.Items.Count]));

    { Expande a pasta "Tabelas" pelo mesmo evento que a UI usa. }
    Folder := nil;
    for I := 0 to Form.Tree.Items.Count - 1 do
      if SameText(Form.Tree.Items[I].Text, 'Tabelas') then
        Folder := Form.Tree.Items[I];
    Check('pasta Tabelas na arvore', Assigned(Folder));
    if Assigned(Folder) then
    begin
      Allow := True;
      Form.Tree.OnExpanding(Form.Tree, Folder, Allow);
      Check('expansao permitida', Allow);
      FoundTable := False;
      TableNode := nil;
      for I := 0 to Folder.Count - 1 do
        if SameText(Folder.Items[I].Text, 'TESTE_IBSTUDIO') then
        begin
          FoundTable := True;
          TableNode := Folder.Items[I];
        end;
      Check('tabela listada na arvore', FoundTable,
        Format('(%d filhos)', [Folder.Count]));

      { Duplo clique na tabela: abre uma aba e executa o select. }
      if Assigned(TableNode) then
      begin
        WriteLn('--- duplo clique na tabela ---');
        Form.Tree.Selected := TableNode;
        Form.Tree.OnDblClick(Form.Tree);
        Tab := Form.ActiveTab;
        Wait := 0;
        while Assigned(Tab) and Tab.Busy and (Wait < 200) do
        begin
          PumpFor(50);
          Inc(Wait);
        end;
        Check('aba de dados aberta', Assigned(Tab));
        Check('titulo da aba e a tabela',
          Assigned(Tab) and SameText(Form.Tabs.ActivePage.Caption, 'TESTE_IBSTUDIO'),
          Format('(%s)', [Form.Tabs.ActivePage.Caption]));
        Check('tabela aberta com 3 linhas',
          Assigned(Tab) and (Tab.ResultRowCount = 3),
          Format('(%d)', [Tab.ResultRowCount]));

        { Exportacao do resultado para CSV. }
        if Assigned(Tab) then
        begin
          WriteLn('--- exportacao CSV ---');
          CsvFile := IncludeTrailingPathDelimiter(GetTempDir) +
            'ibstudio-export.csv';
          DefaultCsvOptions(CsvOpts);
          Check('exportou 3 linhas', Tab.ExportCsv(CsvFile, CsvOpts) = 3);
          CsvStream := TFileStream.Create(CsvFile, fmOpenRead or fmShareDenyNone);
          try
            CsvTable := ReadCsv(CsvStream, CsvOpts);
          finally
            CsvStream.Free;
          end;
          try
            Check('csv com 6 colunas', CsvTable.ColumnCount = 6,
              Format('(%d)', [CsvTable.ColumnCount]));
            Check('csv com 3 linhas', CsvTable.RowCount = 3,
              Format('(%d)', [CsvTable.RowCount]));
          finally
            CsvTable.Free;
          end;
          DeleteFile(CsvFile);
        end;

        { Edicao de dados: altera o nome do registro 1 e confere no banco. }
        if Assigned(Tab) then
        begin
          WriteLn('--- edicao de dados ---');
          Check('aba reconhece a tabela editavel',
            SameText(Tab.EditRelation, 'TESTE_IBSTUDIO'), Tab.EditRelation);

          EditValues := TStringList.Create;
          try
            EditValues.Values['NOME'] := 'Editado';
            Check('edicao aplicada', Tab.ApplyEdits(EditValues, nil));
            Wait := 0;
            while Tab.Busy and (Wait < 200) do
            begin
              PumpFor(50);
              Inc(Wait);
            end;
            Check('valor gravado no banco', RowName(Profile) = 'Editado',
              RowName(Profile) + ' | ' + Tab.LogText);

            { Devolve o valor original para nao afetar outras execucoes. }
            EditValues.Values['NOME'] := 'Ação';
            Tab.ApplyEdits(EditValues, nil);
            Wait := 0;
            while Tab.Busy and (Wait < 200) do
            begin
              PumpFor(50);
              Inc(Wait);
            end;
            Check('valor restaurado', RowName(Profile) = 'Ação',
              RowName(Profile));
          finally
            EditValues.Free;
          end;
        end;
      end;
    end;

    WriteLn('--- dialogo de edicao ---');
    DlgEdit := TfrmEditRecord.Create(nil);
    try
      Metas := nil;
      SetLength(Metas, 2);
      Metas[0].Name := 'ID';
      Metas[0].FieldType := 8;
      Metas[0].Nullable := False;
      Metas[1].Name := 'NOME';
      Metas[1].FieldType := 37;
      Metas[1].Nullable := True;
      DlgEdit.SetFields(Metas);
      Init := TStringList.Create;
      try
        Init.Values['ID'] := '1';
        Init.Values['NOME'] := 'Texto';
        DlgEdit.SetValues(Init, nil);
        Check('dialogo mostra o valor digitado',
          DlgEdit.GetValues.Values['NOME'] = 'Texto');
        Check('campo nao anulavel sem marca NULL',
          DlgEdit.GetNullFields.Count = 0);
      finally
        Init.Free;
      end;
    finally
      DlgEdit.Free;
    end;

    WriteLn('--- editor de tabela ---');
    Sess := TIBStudioSession.Create;
    try
      Sess.Connect(Profile);
      DlgTable := TfrmTableEditor.Create(nil);
      try
        DlgTable.SetSession(Sess);
        M := Sess.LoadTableModel('TESTE_IBSTUDIO');
        DlgTable.SetModel(M, False);
        Check('editor carregou os campos', Length(DlgTable.Model.Fields) = 6,
          Format('(%d)', [Length(DlgTable.Model.Fields)]));
        Check('chave primaria carregada',
          Length(PrimaryKeyFields(DlgTable.Model)) = 1,
          Format('(%d)', [Length(PrimaryKeyFields(DlgTable.Model))]));
      finally
        DlgTable.Free;
      end;
    finally
      Sess.Free;
    end;

    WriteLn('--- editor de codigo ---');
    Sess := TIBStudioSession.Create;
    try
      Sess.Connect(Profile);
      Frame := TCodeEditorFrame.Create(nil);
      try
        Frame.SetSession(Sess);
        Frame.SetObject(ckProcedure, 'PROC_TESTE', '', False, True);
        Frame.SetSource('AS' + LineEnding + 'begin' + LineEnding +
          '  exit;' + LineEnding + 'end');
        Frame.Compile;
        Check('procedure compilada', Pos('sucesso', Frame.LogText) > 0,
          Frame.LogText);
        Obj := Sess.LoadCodeObject(ckProcedure, 'PROC_TESTE');
        Check('procedure no catalogo', Obj.Exists);
        Sess.ExecuteStatement(DropObjectSQL(ckProcedure, 'PROC_TESTE'), Err);
      finally
        Frame.Free;
      end;
    finally
      Sess.Free;
    end;

    WriteLn('--- tarefas administrativas ---');
    Sess := TIBStudioSession.Create;
    try
      Sess.Connect(Profile);
      DlgAdmin := TfrmAdmin.Create(nil);
      try
        DlgAdmin.SetSession(Sess);
        DlgAdmin.SetTask(atBackup);
        Check('dialogo administrativo criado', DlgAdmin.Visible = False);
      finally
        DlgAdmin.Free;
      end;
    finally
      Sess.Free;
    end;

    WriteLn('--- extracao de metadados ---');
    Sess := TIBStudioSession.Create;
    try
      Sess.Connect(Profile);
      DlgExtract := TfrmExtract.Create(nil);
      try
        DlgExtract.SetSession(Sess);
        DlgExtract.Generate;
        Check('script de criacao gerado',
          Pos('create table', DlgExtract.ScriptText) > 0,
          Copy(DlgExtract.ScriptText, 1, 120));
      finally
        DlgExtract.Free;
      end;
    finally
      Sess.Free;
    end;

    WriteLn('--- assistente do editor ---');
    Tab := Form.ActiveTab;
    if Assigned(Tab) then
    begin
      Tab.SetSqlText('select nome from teste_ibstudio');
      PumpFor(150);
      Tab.SetCaretPosition(1, 12);
      Tab.RefreshAssistant;
      PumpFor(700);
      Check('assistente identifica o campo',
        Pos('NOME', UpperCase(Tab.AssistantText)) > 0, Tab.AssistantText);
      Tab.FormatSqlNow;
      Check('sql formatado', Pos('SELECT', Tab.SqlText) > 0, Tab.SqlText);
    end;

    WriteLn('--- usuarios e sessoes ---');
    Sess := TIBStudioSession.Create;
    try
      Sess.Connect(Profile);
      DlgSecurity := TfrmSecurity.Create(nil);
      try
        DlgSecurity.SetSession(Sess);
        Check('dialogo de usuarios criado', DlgSecurity.Visible = False);
      finally
        DlgSecurity.Free;
      end;
      DlgSessions := TfrmSessions.Create(nil);
      try
        DlgSessions.SetSession(Sess);
        Check('dialogo de sessoes criado', DlgSessions.Visible = False);
      finally
        DlgSessions.Free;
      end;
    finally
      Sess.Free;
    end;

    WriteLn('--- previa de SQL ---');
    Preview := TfrmSqlPreview.Create(nil);
    try
      Preview.SetSql('select id, nome from teste_ibstudio');
      Check('previa mostra o script',
        Trim(Preview.SqlText) = 'select id, nome from teste_ibstudio',
        Preview.SqlText);
    finally
      Preview.Free;
    end;

    WriteLn('--- execucao pela aba SQL ---');
    Tab := Form.ActiveTab;
    Check('aba SQL ativa', Assigned(Tab));
    if Assigned(Tab) then
    begin
      Tab.SetSqlText('select id, nome from teste_ibstudio order by id;');
      Tab.ExecuteScript;
      Wait := 0;
      while Tab.Busy and (Wait < 200) do
      begin
        PumpFor(50);
        Inc(Wait);
      end;
      Check('consulta terminou', not Tab.Busy);
      Check('grade com 3 linhas', Tab.ResultRowCount = 3,
        Format('(%d)', [Tab.ResultRowCount]));
    end;
  finally
    Form.Free;
    Profile.Free;
  end;

  WriteLn;
  if Failures = 0 then
  begin
    WriteLn('TESTE DE FUMACA DA UI OK');
    Halt(0);
  end
  else
  begin
    WriteLn(Failures, ' FALHA(S)');
    Halt(1);
  end;
end.
