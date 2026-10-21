unit ibschema;
{ Modelo do esquema de um banco: tabelas, dominios, views, procedures,
  triggers, exceptions e geradores. Sem dependencia de banco ou de LCL:
  quem monta o modelo e a camada de dados, quem usa e a extracao e o
  comparador. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, ibtypes, ibddl;

type
  { Dominio (tipo nomeado). }
  TDomainModel = record
    Name: string;
    TypeName: string;
    NotNull: Boolean;
    DefaultValue: string;
    Description: string;
  end;
  TDomainArray = array of TDomainModel;

  { Exception (mensagem de erro). }
  TExceptionModel = record
    Name: string;
    Message: string;
  end;
  TExceptionArray = array of TExceptionModel;

  { Gerador (sequence). }
  TGeneratorModel = record
    Name: string;
    InitialValue: Int64;
  end;
  TGeneratorArray = array of TGeneratorModel;

  { View. }
  TViewModel = record
    Name: string;
    Columns: TStringArray;
    Source: string;
  end;
  TViewArray = array of TViewModel;

  { Codigo (procedure, trigger). }
  TCodeObjectArray = array of TCodeObject;

  TTableModelArray = array of TTableModel;

  { Esquema completo. }
  TSchemaModel = record
    Tables: TTableModelArray;
    Domains: TDomainArray;
    Exceptions: TExceptionArray;
    Generators: TGeneratorArray;
    Views: TViewArray;
    Procedures: TCodeObjectArray;
    Triggers: TCodeObjectArray;
    Grants: TStringArray;
  end;

{ Modelo vazio. }
function NewSchemaModel: TSchemaModel;

{ Procura uma tabela pelo nome. }
function FindTable(const AModel: TSchemaModel; const AName: string): Integer;

{ Nomes das tabelas, em ordem alfabetica. }
function SortedTableNames(const AModel: TSchemaModel): TStringArray;

implementation

function NewSchemaModel: TSchemaModel;
begin
  Result.Tables := nil;
  Result.Domains := nil;
  Result.Exceptions := nil;
  Result.Generators := nil;
  Result.Views := nil;
  Result.Procedures := nil;
  Result.Triggers := nil;
  Result.Grants := nil;
end;

function FindTable(const AModel: TSchemaModel; const AName: string): Integer;
var
  I: Integer;
begin
  for I := 0 to High(AModel.Tables) do
    if SameText(AModel.Tables[I].Name, AName) then
      Exit(I);
  Result := -1;
end;

function SortedTableNames(const AModel: TSchemaModel): TStringArray;
var
  I, J: Integer;
  Tmp: string;
begin
  Result := nil;
  SetLength(Result, Length(AModel.Tables));
  for I := 0 to High(AModel.Tables) do
    Result[I] := AModel.Tables[I].Name;
  { Insercao simples: os nomes sao poucos. }
  for I := 1 to High(Result) do
  begin
    Tmp := Result[I];
    J := I - 1;
    while (J >= 0) and (Result[J] > Tmp) do
    begin
      Result[J + 1] := Result[J];
      Dec(J);
    end;
    Result[J + 1] := Tmp;
  end;
end;

end.
