unit ibformat;
{ Formatacao basica de SQL: palavras-chave em maiusculas e indentacao das
  linhas. Funcao pura, sem LCL nem banco. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibsqlutil;

{ Formata o texto: caixa das palavras-chave e indentacao. }
function FormatSql(const ASql: string): string;

implementation

{ Palavras que aumentam a indentacao da linha seguinte. }
function IsOpeningKeyword(const AWord: string): Boolean;
begin
  Result := (AWord = 'SELECT') or (AWord = 'FROM') or (AWord = 'WHERE') or
    (AWord = 'GROUP') or (AWord = 'ORDER') or (AWord = 'HAVING') or
    (AWord = 'UNION') or (AWord = 'VALUES') or (AWord = 'SET') or
    (AWord = 'INTO');
end;

{ Palavras que reduzem a indentacao da linha. }
function IsClosingKeyword(const AWord: string): Boolean;
begin
  Result := (AWord = 'AND') or (AWord = 'OR') or (AWord = 'END') or
    (AWord = 'ELSE') or (AWord = 'WHEN') or (AWord = 'THEN');
end;

function FirstWord(const ASql: string): string;
var
  I: Integer;
  S: string;
begin
  S := Trim(ASql);
  I := 1;
  while (I <= Length(S)) and (S[I] in ['A'..'Z', 'a'..'z', '_']) do
    Inc(I);
  Result := UpperCase(Copy(S, 1, I - 1));
end;

function LastWord(const ASql: string): string;
var
  I, Start: Integer;
  S: string;
begin
  S := Trim(ASql);
  I := Length(S);
  while (I > 0) and (S[I] <= ' ') do
    Dec(I);
  Start := I;
  while (I > 0) and (S[I] in ['A'..'Z', 'a'..'z', '_', ')']) do
    Dec(I);
  Result := UpperCase(Copy(S, I + 1, Start - I));
end;

{ Coloca em maiusculas as palavras-chave, sem mexer em textos entre
  apostrofos. }
function UpperKeywords(const ASql: string): string;
var
  I, N, Start: Integer;
  InString: Boolean;
  Word: string;
  C: Char;
begin
  Result := '';
  I := 1;
  N := Length(ASql);
  InString := False;
  while I <= N do
  begin
    C := ASql[I];
    if C = '''' then
    begin
      InString := not InString;
      Result := Result + C;
      Inc(I);
      Continue;
    end;
    if not InString and ((C >= 'A') and (C <= 'Z') or (C >= 'a') and (C <= 'z')
      or (C = '_')) then
    begin
      Start := I;
      while (I <= N) and ((ASql[I] >= 'A') and (ASql[I] <= 'Z') or
        (ASql[I] >= 'a') and (ASql[I] <= 'z') or (ASql[I] = '_') or
        (ASql[I] = '$') or (ASql[I] = '#')) do
        Inc(I);
      Word := Copy(ASql, Start, I - Start);
      if IsSqlKeyword(Word) then
        Result := Result + UpperCase(Word)
      else
        Result := Result + Word;
      Continue;
    end;
    Result := Result + C;
    Inc(I);
  end;
end;

function FormatSql(const ASql: string): string;
var
  Lines: TStringList;
  I, Indent: Integer;
  S: string;
begin
  Lines := TStringList.Create;
  try
    Lines.Text := ASql;
    Indent := 0;
    for I := 0 to Lines.Count - 1 do
    begin
      S := Trim(Lines[I]);
      if S = '' then
      begin
        Lines[I] := '';
        Continue;
      end;
      if IsClosingKeyword(FirstWord(S)) and (Indent > 0) then
        Dec(Indent);
      Lines[I] := StringOfChar(' ', Indent * 2) + UpperKeywords(S);
      if IsOpeningKeyword(FirstWord(S)) then
        Inc(Indent);
    end;
    Result := Lines.Text;
  finally
    Lines.Free;
  end;
end;

end.
