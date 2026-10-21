unit tc_templates;
{ Testes dos templates de SQL. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibtemplates;

type
  TTemplateTest = class(TTestCase)
  published
    procedure TemplatesPadrao;
    procedure ExpandeAutorEBanco;
    procedure ExpandeData;
    procedure CursorNoLugarCerto;
  end;

implementation

procedure TTemplateTest.TemplatesPadrao;
var
  T: TTemplateArray;
  I: Integer;
  Found: Boolean;
begin
  T := DefaultTemplates;
  AssertTrue('cinco templates', Length(T) = 5);
  Found := False;
  for I := 0 to High(T) do
    if T[I].Name = 'sel' then
      Found := True;
  AssertTrue('template sel', Found);
end;

procedure TTemplateTest.ExpandeAutorEBanco;
var
  S: string;
  P: Integer;
begin
  S := ExpandTemplate('-- por &Author no banco &Database', 'ana', 'teste.fdb', P);
  AssertTrue('autor', Pos('-- por ana no banco teste.fdb', S) > 0);
end;

procedure TTemplateTest.ExpandeData;
var
  S: string;
  P: Integer;
begin
  S := ExpandTemplate('&Date &Time', '', '', P);
  AssertTrue('data expandida', Pos(DateToStr(Now), S) > 0);
end;

procedure TTemplateTest.CursorNoLugarCerto;
var
  S: string;
  P: Integer;
begin
  S := ExpandTemplate('select * from &Cursor', '', '', P);
  AssertEquals('texto', 'select * from ', S);
  AssertEquals('posicao do cursor', 14, P);
end;

initialization
  RegisterTest(TTemplateTest);

end.
