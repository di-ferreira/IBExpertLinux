program uismoke;
{ Teste de fumaca da interface: monta o formulario principal, conecta pelo
  mesmo caminho do botao "Conectar", confere a arvore e executa uma consulta
  pela aba SQL (thread + grade).

  Uso: uismoke <host> <porta> <banco.fdb> <usuario> <senha> }

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}cthreads,{$ENDIF}
  Interfaces, Forms, SysUtils, Controls, ComCtrls, ExtCtrls,
  ibtypes, ibsession, uMain, uSqlTab, uSqlPreview;

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

var
  Form: TfrmMain;
  Profile: TConnectionProfile;
  Tab: TSqlTabFrame;
  Preview: TfrmSqlPreview;
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
      end;
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
