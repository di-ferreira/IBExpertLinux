# Fase 2 — Exportação e importação CSV

Status: pendente
Depende de: Fase 0 (execução parametrizada), Fase 1 (opcional: grade com dados)
Estimativa: M (1 a 2 sessões)

## Objetivo

Exportar o resultado da grade para CSV e importar um arquivo CSV para uma
tabela, com opções de formato e prévia — o par *Export Data* / *Import data*
do IBExpert.

## Escopo

1. **Núcleo `src/core/ibcsv.pas`**
   - `TCsvOptions`: separador, aspas, cabeçalho, texto de NULL, codificação
     (UTF-8/ISO-8859-1), quebra de linha.
   - `WriteCsv(ADataset: TDataset; AStream: TStream; AOptions): Integer`.
   - `ReadCsv(AStream: TStream; AOptions): TCsvTable` (linhas e colunas em
     memória), com parser que respeita aspas, aspas duplas e quebras dentro
     do campo.
   - `CsvEscape`/`CsvUnescape` como funções puras.

2. **Exportar**
   - Em `uSqlTab`: botão/menu `Exportar CSV…` com `TSaveDialog`, opções
     (cabeçalho, separador, NULL, codificação) e exportação de todas as
     linhas do buffer (respeitando o limite carregado).
   - Mensagem final com quantidade de linhas e caminho.

3. **Importar**
   - `src/ui/uImportCsv.pas` (modal em código), em 2 passos:
     1. arquivo + opções + prévia das 10 primeiras linhas;
     2. tabela de destino + mapeamento coluna CSV → campo (por nome, com
        ajuste manual) + modo (somente INSERT).
   - Executar em transação única, com contagem de sucesso/erro e rollback
     em caso de falha (ou continuar e relatar, conforme opção).
   - Usar `ExecuteParams` da Fase 0 e `QuoteIdentifier` para os nomes.

4. **Persistência**
   - Guardar em `TStudioSettings` a última pasta usada e as opções de CSV.

## Passos

1. `ibcsv.pas` + `tests/tc_csv.pas`.
2. Exportação na aba de resultados.
3. `uImportCsv.pas` (prévia + mapeamento).
4. Execução da importação e relatório.
5. Teste de integração no `testfb` (3 linhas).

## Critérios de aceite

- Exportar `TESTE_IBSTUDIO` gera um CSV que abre corretamente em planilha,
  com acentos e campos entre aspas.
- Importar o mesmo CSV em uma tabela vazia cria as 3 linhas com os valores
  originais (incluindo NULL).
- Arquivo com separador `;` e campos entre aspas é lido sem quebrar linhas.

## Testes mínimos

- `tc_csv.pas`: ida e volta com aspas, quebra de linha e NULL; escapar/
  desescapar (5 asserções).
- `testfb.lpr`: importar 3 linhas em uma tabela temporária e contar (1 bloco).
- Verificação manual: abrir o CSV exportado no LibreOffice.

## Riscos

- Codificação: o banco pode estar em ISO-8859-1 e o CSV em UTF-8; converter
  explicitamente e avisar quando houver caractere não representável.
- CSV grande: limitar a prévia e importar em lotes de 500 linhas.

## Commit sugerido

`feat(ibstudio): exportacao e importacao CSV com previa e mapeamento`
