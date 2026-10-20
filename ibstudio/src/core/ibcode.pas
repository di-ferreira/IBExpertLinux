unit ibcode;
{ Editores de codigo: montagem dos comandos DDL e utilidades de edicao do
  texto (comentario, linha do erro). Nao depende de LCL nem de banco. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibsqlutil;

{ Nome do objeto no catalogo (procedure, trigger, view...). }
function CodeKindName(AKind: TCodeKind): string;

{ Nome para exibir na interface. }
function CodeKindTitle(AKind: TCodeKind): string;

{ Comando que recria o objeto com o codigo informado. APrefix depende do
  tipo: 'for TABELA ' para trigger, '(COL1, COL2) ' para view, '' para os
  demais. }
function CreateOrAlterSQL(AKind: TCodeKind; const AName, ASource,
  APrefix: string): string;

{ Evento do trigger, a partir do codigo gravado em rdb$trigger_type.
  O Firebird 2.5 exige o evento (before/after + insert/update/delete) no
  comando de criacao do trigger. }
function TriggerEventSQL(AType: Integer): string;

{ Comando de exclusao. }
function DropObjectSQL(AKind: TCodeKind; const AName: string): string;

{ Comando para mudar o valor de um gerador. }
function SetGeneratorSQL(const AName, AValue: string): string;

{ Comando de criacao de um gerador novo. }
function CreateGeneratorSQL(const AName, AValue: string): string;

{ Linha indicada na mensagem de erro do servidor (0 quando nao ha). }
function ErrorLineNumber(const AMessage: string): Integer;

{ Comenta (ou descomenta) as linhas do codigo. }
function CommentLines(const ASource: string; AComment: Boolean): string;

{ Mensagem de erro da excecao, ja formatada. }
function CodeErrorMessage(const AMessage: string): string;

implementation

function QuotedLiteral(const AValue: string): string;
begin
  Result := '''' + StringReplace(AValue, '''', '''''', [rfReplaceAll]) + '''';
end;

function CodeKindName(AKind: TCodeKind): string;
begin
  case AKind of
    ckNoObject: Result := '';
    ckProcedure: Result := 'procedure';
    ckTrigger: Result := 'trigger';
    ckView: Result := 'view';
    ckDomain: Result := 'domain';
    ckException: Result := 'exception';
    ckGenerator: Result := 'generator';
  else
    Result := 'object';
  end;
end;

function CodeKindTitle(AKind: TCodeKind): string;
begin
  case AKind of
    ckNoObject: Result := '';
    ckProcedure: Result := 'Procedure';
    ckTrigger: Result := 'Trigger';
    ckView: Result := 'View';
    ckDomain: Result := 'Domain';
    ckException: Result := 'Exception';
    ckGenerator: Result := 'Generator';
  else
    Result := 'Codigo';
  end;
end;

function StartsWithAs(const ASource: string): Boolean;
var
  S: string;
begin
  S := Trim(ASource);
  Result := (Length(S) >= 2) and (UpperCase(Copy(S, 1, 2)) = 'AS') and
    ((Length(S) = 2) or (S[3] <= ' '));
end;

function CreateOrAlterSQL(AKind: TCodeKind; const AName, ASource,
  APrefix: string): string;
var
  Body: string;
begin
  Body := Trim(ASource);
  case AKind of
    ckNoObject:
      Result := Body;
    ckProcedure:
      if StartsWithAs(Body) then
        Result := 'create or alter procedure ' + QuoteIdentifier(AName) +
          ' ' + Body
      else
        Result := 'create or alter procedure ' + QuoteIdentifier(AName) +
          ' as ' + Body;
    ckTrigger:
      if StartsWithAs(Body) then
        Result := 'create or alter trigger ' + QuoteIdentifier(AName) + ' ' +
          APrefix + Body
      else
        Result := 'create or alter trigger ' + QuoteIdentifier(AName) + ' ' +
          APrefix + 'as ' + Body;
    ckView:
      Result := 'create or alter view ' + QuoteIdentifier(AName) + ' ' +
        APrefix + 'as ' + Body;
    ckDomain:
      { O Firebird 2.5 nao tem CREATE OR ALTER DOMAIN: o dominio e
        recriado (o editor remove o antigo antes). }
      Result := 'create domain ' + QuoteIdentifier(AName) + ' as ' + Body;
    ckException:
      Result := 'create or alter exception ' + QuoteIdentifier(AName) + ' ' +
        QuotedLiteral(Body);
    ckGenerator:
      Result := SetGeneratorSQL(AName, Body);
  else
    Result := Body;
  end;
end;

function DropObjectSQL(AKind: TCodeKind; const AName: string): string;
begin
  if AKind = ckNoObject then
    Exit('');
  Result := 'drop ' + CodeKindName(AKind) + ' ' + QuoteIdentifier(AName);
  if AKind = ckGenerator then
    Result := 'drop sequence ' + QuoteIdentifier(AName);
end;

function TriggerEventSQL(AType: Integer): string;
var
  Base: Integer;
  Timing, Events: string;
begin
  { O timing alterna entre 1 (before) e 2 (after); o resto do valor
    identifica o conjunto de eventos. Os valores foram levantados do
    proprio Firebird 2.5. }
  if ((AType mod 4) and 1) <> 0 then
  begin
    Timing := 'before';
    Base := AType - 1;
  end
  else
  begin
    Timing := 'after';
    Base := AType - 2;
  end;

  case Base of
    0: Events := 'insert';
    2: Events := 'update';
    4: Events := 'delete';
    16: Events := 'insert or update';
    24: Events := 'insert or delete';
    26: Events := 'update or delete';
    112: Events := 'insert or update or delete';
  else
    Events := 'insert';
  end;

  Result := Timing + ' ' + Events;
end;

function SetGeneratorSQL(const AName, AValue: string): string;
begin
  Result := 'set generator ' + QuoteIdentifier(AName) + ' to ' +
    Trim(AValue);
end;

function CreateGeneratorSQL(const AName, AValue: string): string;
begin
  Result := 'create sequence ' + QuoteIdentifier(AName) + ' start with ' +
    Trim(AValue);
end;

function ErrorLineNumber(const AMessage: string): Integer;
var
  P, I, N: Integer;
  S: string;
begin
  Result := 0;
  S := AMessage;
  P := Pos('At line', S);
  if P = 0 then
    P := Pos('At Line', S);
  if P = 0 then
    Exit;
  S := Copy(S, P + 7, MaxInt);
  I := 1;
  N := Length(S);
  while (I <= N) and (S[I] <= ' ') do
    Inc(I);
  if (I > N) or not (S[I] in ['0'..'9']) then
    Exit;
  Result := 0;
  while (I <= N) and (S[I] in ['0'..'9']) do
  begin
    Result := Result * 10 + StrToInt(S[I]);
    Inc(I);
  end;
end;

function CommentLines(const ASource: string; AComment: Boolean): string;
var
  Lines: TStringList;
  I: Integer;
  S: string;
begin
  Lines := TStringList.Create;
  try
    Lines.Text := ASource;
    Result := '';
    for I := 0 to Lines.Count - 1 do
    begin
      S := Lines[I];
      if AComment then
      begin
        if Trim(S) <> '' then
          S := '-- ' + S;
      end
      else
        if (Pos('--', S) = 1) then
          S := Trim(Copy(S, 4, MaxInt));
      if I > 0 then
        Result := Result + LineEnding;
      Result := Result + S;
    end;
  finally
    Lines.Free;
  end;
end;

function CodeErrorMessage(const AMessage: string): string;
begin
  Result := Trim(AMessage);
end;

end.
