unit ibtemplates;
{ Templates e snippets de SQL: expansao de atalhos como "sel", "ins" ou
  "proc". Funcao pura, sem LCL nem banco. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

type
  { Um template pronto para uso. }
  TTemplate = record
    Name: string;
    Text: string;
  end;
  TTemplateArray = array of TTemplate;

{ Os templates que acompanham o aplicativo. }
function DefaultTemplates: TTemplateArray;

{ Expande os marcadores &Author, &Date, &Time, &Database e &Cursor.
  ACursorPos recebe a posicao onde o cursor deve ficar (o lugar do
  &Cursor; se nao houver, o fim do texto). }
function ExpandTemplate(const ATemplate, AAuthor, ADatabase: string;
  out ACursorPos: Integer): string;

{ Texto do snippet com os marcadores ja expandidos, sem o &Cursor. }
function ExpandTemplateText(const ATemplate, AAuthor, ADatabase: string): string;

implementation

function DefaultTemplates: TTemplateArray;
begin
  SetLength(Result, 5);
  Result[0].Name := 'sel';
  Result[0].Text := 'select * from &Cursor';
  Result[1].Name := 'ins';
  Result[1].Text := 'insert into &Cursor';
  Result[2].Name := 'upd';
  Result[2].Text := 'update &Cursor';
  Result[3].Name := 'proc';
  Result[3].Text := 'create or alter procedure &Cursor as' + LineEnding +
    'begin' + LineEnding + 'end';
  Result[4].Name := 'trig';
  Result[4].Text := 'create or alter trigger &Cursor for &Database after insert as' +
    LineEnding + 'begin' + LineEnding + 'end';
end;

function ExpandTemplateText(const ATemplate, AAuthor, ADatabase: string): string;
var
  P: Integer;
begin
  Result := ATemplate;
  Result := StringReplace(Result, '&Author', AAuthor, [rfReplaceAll]);
  Result := StringReplace(Result, '&Date', DateToStr(Now), [rfReplaceAll]);
  Result := StringReplace(Result, '&Time', TimeToStr(Now), [rfReplaceAll]);
  Result := StringReplace(Result, '&Database', ADatabase, [rfReplaceAll]);
  P := Pos('&Cursor', Result);
  if P > 0 then
    Result := Copy(Result, 1, P - 1) + Copy(Result, P + 7, MaxInt);
end;

function ExpandTemplate(const ATemplate, AAuthor, ADatabase: string;
  out ACursorPos: Integer): string;
var
  P: Integer;
  S: string;
begin
  ACursorPos := 0;
  S := ATemplate;
  S := StringReplace(S, '&Author', AAuthor, [rfReplaceAll]);
  S := StringReplace(S, '&Date', DateToStr(Now), [rfReplaceAll]);
  S := StringReplace(S, '&Time', TimeToStr(Now), [rfReplaceAll]);
  S := StringReplace(S, '&Database', ADatabase, [rfReplaceAll]);

  P := Pos('&Cursor', S);
  if P > 0 then
  begin
    ACursorPos := P - 1;
    Result := Copy(S, 1, P - 1) + Copy(S, P + 7, MaxInt);
  end
  else
  begin
    ACursorPos := Length(S);
    Result := S;
  end;
end;

end.
