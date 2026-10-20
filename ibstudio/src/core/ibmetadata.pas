unit ibmetadata;
{ Catalogacao de metadados do Firebird a partir das tabelas RDB$.

  Todo o SQL fica aqui (e nao na UI) para poder ser testado sem banco.
  Consultas escritas para Firebird 2.5 e superiores; nao usam recursos
  exclusivos de versoes novas. }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, ibtypes;

type
  TFolderSpec = record
    Kind: TMetadataKind;
    Title: string;
    ListSQL: string;
  end;
  TFolderSpecArray = array of TFolderSpec;

const
  { Codigos de rdb$field_type usados na descricao de colunas. }
  fbtSmallInt = 7;
  fbtInteger = 8;
  fbtFloat = 10;
  fbtDFloat = 11;
  fbtDate = 12;
  fbtTime = 13;
  fbtChar = 14;
  fbtBigInt = 16;
  fbtBoolean = 23;
  fbtDouble = 27;
  fbtTimestamp = 35;
  fbtVarchar = 37;
  fbtBlob = 261;

{ Pastas de primeiro nivel e o SQL que lista seus objetos. }
function FolderSpecs: TFolderSpecArray;

{ SQL que lista os filhos de um objeto (colunas, parametros, indices).
  Retorna '' quando o no e folha ou nao tem filhos. }
function ChildrenSQLFor(AKind: TMetadataKind): string;

{ SQL que lista objetos de uma pasta. }
function ListSQLFor(AKind: TMetadataKind): string;

{ Descreve o tipo de uma coluna a partir das colunas de rdb$fields. }
function DescribeField(AFieldType, ASubType, ALength, APrecision, AScale: Integer;
  ABytesPerChar: Integer = 1): string;

{ Nome do tipo, sem tamanho: VARCHAR, INTEGER, NUMERIC... }
function BaseTypeName(AFieldType, ASubType: Integer): string;

{ Monta a descricao final de uma coluna/parametro. }
function DescribeColumn(AFieldType, ASubType, ALength, APrecision, AScale: Integer;
  ANullable: Boolean; ABytesPerChar: Integer = 1): string;

implementation

function FolderSpecs: TFolderSpecArray;
begin
  Result := nil;
  SetLength(Result, 9);

  Result[0].Kind := mkTable;
  Result[0].Title := 'Tabelas';
  Result[0].ListSQL :=
    'select trim(rdb$relation_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$relations ' +
    'where coalesce(rdb$system_flag, 0) = 0 and rdb$view_blr is null ' +
    'order by 1';

  Result[1].Kind := mkView;
  Result[1].Title := 'Views';
  Result[1].ListSQL :=
    'select trim(rdb$relation_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$relations ' +
    'where coalesce(rdb$system_flag, 0) = 0 and rdb$view_blr is not null ' +
    'order by 1';

  Result[2].Kind := mkProcedure;
  Result[2].Title := 'Procedures';
  Result[2].ListSQL :=
    'select trim(rdb$procedure_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$procedures ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'order by 1';

  Result[3].Kind := mkTrigger;
  Result[3].Title := 'Triggers';
  Result[3].ListSQL :=
    'select trim(rdb$trigger_name) as name, ' +
    'trim(rdb$relation_name) as detail ' +
    'from rdb$triggers ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'order by 1';

  Result[4].Kind := mkDomain;
  Result[4].Title := 'Domains';
  Result[4].ListSQL :=
    'select trim(rdb$field_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$fields ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'and rdb$field_name not starting with ''RDB$'' ' +
    'order by 1';

  Result[5].Kind := mkGenerator;
  Result[5].Title := 'Generators';
  Result[5].ListSQL :=
    'select trim(rdb$generator_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$generators ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'order by 1';

  Result[6].Kind := mkException;
  Result[6].Title := 'Exceptions';
  Result[6].ListSQL :=
    'select trim(rdb$exception_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$exceptions ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'order by 1';

  Result[7].Kind := mkRole;
  Result[7].Title := 'Roles';
  Result[7].ListSQL :=
    'select trim(rdb$role_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$roles ' +
    'order by 1';

  Result[8].Kind := mkUdf;
  Result[8].Title := 'UDFs';
  Result[8].ListSQL :=
    'select trim(rdb$function_name) as name, ' +
    'cast('''' as varchar(255)) as detail ' +
    'from rdb$functions ' +
    'where coalesce(rdb$system_flag, 0) = 0 ' +
    'order by 1';
end;

function ListSQLFor(AKind: TMetadataKind): string;
var
  Specs: TFolderSpecArray;
  I: Integer;
begin
  Result := '';
  Specs := FolderSpecs;
  for I := 0 to High(Specs) do
    if Specs[I].Kind = AKind then
      Exit(Specs[I].ListSQL);
end;

function ChildrenSQLFor(AKind: TMetadataKind): string;
begin
  case AKind of
    mkTable, mkView:
      Result :=
        'select trim(rf.rdb$field_name) as name, ' +
        'cast(f.rdb$field_type as integer) as ftype, ' +
        'cast(coalesce(f.rdb$field_sub_type, 0) as integer) as fsubtype, ' +
        'cast(f.rdb$field_length as integer) as flen, ' +
        'cast(coalesce(f.rdb$field_precision, 0) as integer) as fprec, ' +
        'cast(coalesce(f.rdb$field_scale, 0) as integer) as fscale, ' +
        'cast(coalesce(rf.rdb$null_flag, 0) as integer) as fnull, ' +
        'cast(coalesce(cs.rdb$bytes_per_character, 1) as integer) as fbpc ' +
        'from rdb$relation_fields rf ' +
        'join rdb$fields f on f.rdb$field_name = rf.rdb$field_source ' +
        'left join rdb$character_sets cs ' +
        '  on cs.rdb$character_set_id = f.rdb$character_set_id ' +
        'where rf.rdb$relation_name = :name ' +
        'order by rf.rdb$field_position';

    mkProcedure:
      Result :=
        'select trim(p.rdb$parameter_name) as name, ' +
        'cast(f.rdb$field_type as integer) as ftype, ' +
        'cast(coalesce(f.rdb$field_sub_type, 0) as integer) as fsubtype, ' +
        'cast(f.rdb$field_length as integer) as flen, ' +
        'cast(coalesce(f.rdb$field_precision, 0) as integer) as fprec, ' +
        'cast(coalesce(f.rdb$field_scale, 0) as integer) as fscale, ' +
        'cast(0 as integer) as fnull, ' +
        'cast(coalesce(cs.rdb$bytes_per_character, 1) as integer) as fbpc, ' +
        'cast(p.rdb$parameter_type as integer) as ptype ' +
        'from rdb$procedure_parameters p ' +
        'join rdb$fields f on f.rdb$field_name = p.rdb$field_source ' +
        'left join rdb$character_sets cs ' +
        '  on cs.rdb$character_set_id = f.rdb$character_set_id ' +
        'where p.rdb$procedure_name = :name ' +
        'order by p.rdb$parameter_type, p.rdb$parameter_number';
  else
    Result := '';
  end;
end;

{ rdb$field_length guarda bytes; para CHAR/VARCHAR o tamanho visivel e em
  caracteres (UTF8 usa ate 4 bytes por caractere). }
function CharLength(ALength, ABytesPerChar: Integer): Integer;
begin
  if ABytesPerChar < 1 then
    ABytesPerChar := 1;
  Result := ALength div ABytesPerChar;
end;

{ No Firebird, NUMERIC e DECIMAL compartilham o tipo fisico com os inteiros
  (rdb$field_sub_type = 1 para NUMERIC, 2 para DECIMAL). Devolve '' quando o
  campo e um inteiro/ponto flutuante comum. }
function ExactNumericName(ASubType, AScale: Integer): string;
begin
  case ASubType of
    1: Result := 'NUMERIC';
    2: Result := 'DECIMAL';
  else
    if AScale <> 0 then
      Result := 'NUMERIC'
    else
      Result := '';
  end;
end;

function BaseTypeName(AFieldType, ASubType: Integer): string;
begin
  case AFieldType of
    fbtSmallInt:
      if ASubType = 1 then
        Result := 'NUMERIC'
      else if ASubType = 2 then
        Result := 'DECIMAL'
      else
        Result := 'SMALLINT';
    fbtInteger:
      if ASubType = 1 then
        Result := 'NUMERIC'
      else if ASubType = 2 then
        Result := 'DECIMAL'
      else
        Result := 'INTEGER';
    fbtBigInt:
      if ASubType = 1 then
        Result := 'NUMERIC'
      else if ASubType = 2 then
        Result := 'DECIMAL'
      else
        Result := 'BIGINT';
    fbtFloat: Result := 'FLOAT';
    fbtDFloat: Result := 'D_FLOAT';
    fbtDouble: Result := 'DOUBLE PRECISION';
    fbtDate: Result := 'DATE';
    fbtTime: Result := 'TIME';
    fbtTimestamp: Result := 'TIMESTAMP';
    fbtBoolean: Result := 'BOOLEAN';
    fbtChar: Result := 'CHAR';
    fbtVarchar: Result := 'VARCHAR';
    fbtBlob: Result := 'BLOB';
  else
    Result := 'INTEGER';
  end;
end;

function DescribeField(AFieldType, ASubType, ALength, APrecision, AScale: Integer;
  ABytesPerChar: Integer): string;
var
  P, S: Integer;
  Exact: string;
begin
  P := APrecision;
  S := Abs(AScale);
  Exact := ExactNumericName(ASubType, AScale);
  case AFieldType of
    fbtSmallInt, fbtInteger, fbtBigInt:
      begin
        if Exact <> '' then
        begin
          if P <= 0 then
            case AFieldType of
              fbtSmallInt: P := 4;
              fbtInteger: P := 9;
            else
              P := 18;
            end;
          Result := Format('%s(%d,%d)', [Exact, P, S]);
        end
        else
          case AFieldType of
            fbtSmallInt: Result := 'SMALLINT';
            fbtInteger: Result := 'INTEGER';
          else
            Result := 'BIGINT';
          end;
      end;
    fbtFloat: Result := Format('FLOAT(%d)', [P]);
    fbtDFloat: Result := 'D_FLOAT';
    fbtDouble:
      if Exact <> '' then
      begin
        { NUMERIC/DECIMAL de precisao alta e guardado como double. }
        if P <= 0 then
          P := 15;
        Result := Format('%s(%d,%d)', [Exact, P, S]);
      end
      else
        Result := 'DOUBLE PRECISION';
    fbtDate: Result := 'DATE';
    fbtTime: Result := 'TIME';
    fbtTimestamp: Result := 'TIMESTAMP';
    fbtBoolean: Result := 'BOOLEAN';
    fbtChar: Result := Format('CHAR(%d)', [CharLength(ALength, ABytesPerChar)]);
    fbtVarchar: Result := Format('VARCHAR(%d)', [CharLength(ALength, ABytesPerChar)]);
    fbtBlob:
      case ASubType of
        1: Result := 'BLOB TEXT';
        2: Result := 'BLOB BINARY';
      else
        Result := 'BLOB';
      end;
  else
    Result := Format('TIPO(%d)', [AFieldType]);
  end;
end;

function DescribeColumn(AFieldType, ASubType, ALength, APrecision, AScale: Integer;
  ANullable: Boolean; ABytesPerChar: Integer): string;
begin
  Result := DescribeField(AFieldType, ASubType, ALength, APrecision, AScale, ABytesPerChar);
  if ANullable then
    Result := Result + ' NULL'
  else
    Result := Result + ' NOT NULL';
end;

end.
