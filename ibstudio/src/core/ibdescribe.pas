unit ibdescribe;
{ Analise do texto sob o cursor: identifica a tabela e o campo citados,
  usados pelo SQL Assistant. Funcao pura, sem LCL nem banco. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibsqlutil;

{ Nome do identificador na posicao indicada (1 = primeira letra). }
function WordAt(const AText: string; APos: Integer): string;

{ Qualificador (alias) antes do ponto, se houver. }
function QualifierBeforeDot(const AText: string; APos: Integer): string;

{ Objeto citado sob o cursor: "TABELA", "TABELA.CAMPO", "ALIAS.CAMPO" ou
  "NOME". Devolve False quando nao ha identificador. }
function ObjectAtCursor(const AText: string; APos: Integer; out AObject: string):
  Boolean;

{ Objeto citado logo antes do cursor (o texto vai ate o cursor):
  "clientes.nome" ou "nome". }
function ObjectBeforeCursor(const AText: string): string;

{ Procura a chamada de uma procedure logo antes do cursor: em
  "minha_proc(" devolve "minha_proc". }
function ProcedureCallBefore(const AText: string; APos: Integer): string;

implementation

function IsIdentChar(const C: Char): Boolean;
begin
  Result := (C >= 'A') and (C <= 'Z') or (C >= 'a') and (C <= 'z') or
    (C >= '0') and (C <= '9') or (C = '_') or (C = '$') or (C = '#');
end;

function WordAt(const AText: string; APos: Integer): string;
var
  I, Start, N: Integer;
begin
  Result := '';
  N := Length(AText);
  if (APos < 1) or (APos > N) then
    Exit;
  if not IsIdentChar(AText[APos]) then
    Exit;
  Start := APos;
  while (Start > 1) and IsIdentChar(AText[Start - 1]) do
    Dec(Start);
  I := APos;
  while (I < N) and IsIdentChar(AText[I + 1]) do
    Inc(I);
  Result := Copy(AText, Start, I - Start + 1);
end;

function QualifierBeforeDot(const AText: string; APos: Integer): string;
var
  I, Start: Integer;
begin
  Result := '';
  I := APos - 1;
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  if (I < 1) or (AText[I] <> '.') then
    Exit;
  Dec(I);
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  if (I >= 1) and (AText[I] = '"') then
  begin
    { Identificador entre aspas. }
    Dec(I);
    Start := I;
    while (I >= 1) and (AText[I] <> '"') do
      Dec(I);
    Result := Copy(AText, Start, I - Start);
    Exit;
  end;
  Start := I;
  while (I >= 1) and IsIdentChar(AText[I]) do
    Dec(I);
  Result := Copy(AText, I + 1, Start - I);
end;

function ObjectAtCursor(const AText: string; APos: Integer; out AObject: string):
  Boolean;
var
  Word, Qual: string;
begin
  AObject := '';
  Word := WordAt(AText, APos);
  if Word = '' then
    Exit(False);
  Qual := QualifierBeforeDot(AText, APos);
  if Qual = '' then
    AObject := Word
  else
    AObject := Qual + '.' + Word;
  Result := True;
end;

function ObjectBeforeCursor(const AText: string): string;
var
  I, Start, N: Integer;
begin
  Result := '';
  N := Length(AText);
  if N = 0 then
    Exit;
  I := N;
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  if (I < 1) or not IsIdentChar(AText[I]) then
    Exit;
  Start := I;
  while (I >= 1) and IsIdentChar(AText[I]) do
    Dec(I);
  Result := Copy(AText, I + 1, Start - I);
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  if (I >= 1) and (AText[I] = '.') then
  begin
    Dec(I);
    while (I >= 1) and (AText[I] <= ' ') do
      Dec(I);
    Start := I;
    while (I >= 1) and IsIdentChar(AText[I]) do
      Dec(I);
    Result := Copy(AText, I + 1, Start - I) + '.' + Result;
  end;
end;

function ProcedureCallBefore(const AText: string; APos: Integer): string;
var
  I, Start, N: Integer;
begin
  Result := '';
  N := Length(AText);
  if (APos < 1) or (APos > N + 1) then
    Exit;
  { Olha a letra antes do cursor: deve ser o abre parenteses. }
  I := APos - 1;
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  if (I < 1) or (AText[I] <> '(') then
    Exit;
  Dec(I);
  while (I >= 1) and (AText[I] <= ' ') do
    Dec(I);
  Start := I;
  while (I >= 1) and IsIdentChar(AText[I]) do
    Dec(I);
  if Start = I then
    Exit;
  Result := Copy(AText, I + 1, Start - I);
end;

end.
