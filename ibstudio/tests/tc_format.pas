unit tc_format;
{ Testes da formatacao de SQL. }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, ibformat;

type
  TFormatTest = class(TTestCase)
  published
    procedure PalavrasChaveEmMaiusculas;
    procedure TextoEntreAspentosFica;
    procedure IndentaBlocos;
    procedure ReduzIndentacaoEmAnd;
  end;

implementation

procedure TFormatTest.PalavrasChaveEmMaiusculas;
var
  S: string;
begin
  S := FormatSql('select id from teste');
  AssertTrue('select', Pos('SELECT', S) > 0);
  AssertTrue('from', Pos('FROM', S) > 0);
  AssertTrue('identificador intacto', Pos('teste', S) > 0);
end;

procedure TFormatTest.TextoEntreAspentosFica;
var
  S: string;
begin
  S := FormatSql('select ''valor'' from teste');
  AssertTrue('texto intacto', Pos('''valor''', S) > 0);
end;

procedure TFormatTest.IndentaBlocos;
var
  S: string;
  Lines: TStringList;
begin
  S := FormatSql('select a' + LineEnding + 'from b' + LineEnding +
    'where c = 1');
  Lines := TStringList.Create;
  try
    Lines.Text := S;
    AssertEquals('linhas', 3, Lines.Count);
    AssertEquals('select sem recuo', 'SELECT a', Lines[0]);
    AssertEquals('from com recuo', '  FROM b', Lines[1]);
    AssertEquals('where com recuo', '    WHERE c = 1', Lines[2]);
  finally
    Lines.Free;
  end;
end;

procedure TFormatTest.ReduzIndentacaoEmAnd;
var
  S: string;
  Lines: TStringList;
begin
  S := FormatSql('select a' + LineEnding + 'from b' + LineEnding +
    'where c = 1' + LineEnding + 'and d = 2');
  Lines := TStringList.Create;
  try
    Lines.Text := S;
    AssertEquals('and no mesmo nivel do where', '    AND d = 2', Lines[3]);
  finally
    Lines.Free;
  end;
end;

initialization
  RegisterTest(TFormatTest);

end.
