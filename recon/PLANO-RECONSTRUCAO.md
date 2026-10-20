# Plano de reconstrução — o que é possível, o que não é

## Resumo honesto

**"Reconstruir 100% das funções" não é viável** — nem técnica, nem juridicamente:

1. **Juridicamente**: IBExpert é software comercial fechado (IBExpert KG). O
   binário não traz licença de redistribuição nem de engenharia reversa ampla;
   uma reimplementação derivada do código descompilado é obra derivada protegida.
   Reversão para interoperabilidade é uma coisa; clonar o produto é outra.
2. **Tecnicamente**: 12,26 MB de código x86 (≈30–60 mil funções), 313
   formulários, 94.620 propriedades e 5.049 handlers de evento — e boa parte da
   interface depende de componentes comerciais de terceiros (FIBPlus,
   Developer Express, FastReport, TMS, TNT). Não existe "descompilar e compilar
   de novo" para Delphi: o resultado não recompila.
3. **Praticamente**: o objetivo declarado — *rodar no Linux* — **já está
   resolvido** pelo Wine, validado nesta máquina (`README.md`).

## O que foi entregue nesta análise

| Artefato | Conteúdo |
|---|---|
| Execução no Linux | `run-linux.sh`, testado com Wine 6.0.3 (win32), janela principal + Database Explorer abrindo |
| Execução no Windows | `run-windows.bat` |
| Inventário de UI | 277 formulários em DFM texto, 10.862 objetos, 94.620 propriedades, 5.049 handlers (`recon/forms`, `recon/INVENTARIO.md`) |
| Recursos | 331 RCDATA extraídos (`recon/resources`) |
| Ferramenta | `recon/dfm_extract.py` (extrator/decodificador reproduzível) |
| Análise | `recon/ANALISE.md` (identidade, dependências, bibliotecas, limites) |

## Caminhos possíveis

### A. Usar via Wine (recomendado para "rodar hoje")
Custo: zero código. Riscos: integração com impressão/OLE, DPI e o cliente
Firebird de 32 bits. É o único caminho que preserva 100% das funções **de fato**.

### B. Skeleton nativo em Lazarus/Free Pascal (reconstrução de UI)
Converter os 277 DFMs em `.lfm` e gerar o esqueleto de classes com os handlers
declarados (vazios). Resultado: projeto que **compila em Linux e Windows**,
com todas as telas, menus e nomes de componentes — uma planta fiel do produto,
sem a lógica.

- Automatizável a partir do que já foi extraído (script de conversão DFM→LFM).
- Precisa de mapeamento de componentes de terceiros → LCL (`TdxBarManager` →
  `TToolBar`/`TActionList`, `TfrxReport` → LazReport, `TpFIB*` → `TIBConnection`
  do SQLdb ou ZeosLib).
- Entrega valor real: permite reimplementar módulo a módulo sobre uma base
  idêntica em layout.

### C. Reimplementação funcional por módulos (produto novo)
Escolher um subconjunto e reimplementar de verdade. Sugestão de ordem por
relação valor/esforço, usando os nomes de formulário como especificação:

1. **Conexão + Database Explorer** (`TREGISTERDBFORM`, `TDBLOGINFORM`,
   `TC*Frame`): árvore de metadados, grids de dados, DDL básico.
2. **SQL Editor / Script Executive** (`TSQLSCRIPTFORM`, `TSCRIPTEDITORFORM`):
   editor com syntax highlight, execução, histórico, planos.
3. **Editores de objeto** (`TVIEWVIEWFORM`, `TPROCVIEWFORM`, `TINDEXFORM`,
   `TDOMAINEDITORFORM`, `TUDFEDITORFORM`).
4. **Administração** (`TDBBACKUPFORM`, `TDBRESTOREFORM`, `TUSERMANAGERFORM`,
   `TGRANTMANAGER`, `TSQLMONITORFORM`).
5. **Comparação/DDL diff** (`TDBCOMPAREFORM`) e **debugger** (`TFRMDEBUGSP_NEW`).
6. **Relatórios** (FastReport → LazReport/fpReport).

Cada módulo acima corresponde a dezenas de formulários e milhares de linhas.
Para referência de esforço: um clone funcional enxuto (itens 1–2) é trabalho de
semanas a meses; paridade completa é trabalho de equipe por anos.

### D. Alternativas prontas
Se a necessidade é administrar Firebird no Linux: FlameRobin, RedExpert, DBeaver
e IBAdmin já existem e são abertos. Vale comparar antes de investir em C.

## Próximo passo sugerido

Se o objetivo é ter o IBExpert rodando: use o caminho **A** (já validado) e me
diga se falta o cliente Firebird no prefixo — eu configuro.

Se o objetivo é um produto nativo: peça o caminho **B** — eu gero o esqueleto
Lazarus a partir dos 277 DFMs e Marco o que falta para compilar.
