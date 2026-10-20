# IBStudio — atalhos de build.
#
#   make app    compila a aplicacao (Lazarus/LCL + SynEdit)
#   make test   compila e roda os testes do nucleo (fpcunit)
#   make check  apenas compila o nucleo + camada de banco (sem LCL)
#   make run    compila e executa
#   make clean  remove artefatos

FPC      ?= fpc
LAZBUILD ?= lazbuild
CORE     := src/core
TESTS    := tests
BUILD    := /tmp/ibstudio-build

# Banco usado pelos testes de integracao e de fumaca, no formato
# host/porta:/caminho/arquivo.fdb (a porta pode ser omitida).
FB ?= localhost/3050:/tmp/ibstudio_test.fdb
# Evita USER/PASS: USER e variavel de ambiente herdada por make.
TEST_USER ?= SYSDBA
TEST_PASS ?= masterkey

# Divide o DSN em host, porta e banco dentro de uma unica linha de shell.
# Uso: $(call SPLIT_DSN)  ->  define $$host, $$port e $$db.
SPLIT_DSN = dsn='$(FB)'; db="$${dsn\#*:}"; hp="$${dsn%%:*}"; host="$${hp%%/*}"; port="$${hp\#*/}"; if [ "$$port" = "$$hp" ]; then port=3050; fi

.PHONY: all app test check testfb uismoke run clean

all: app

app:
	$(LAZBUILD) ibstudio.lpi

test:
	cd $(TESTS) && $(FPC) -Fu../$(CORE) testcore.lpr
	cd $(TESTS) && ./testcore --all --format=plain

check:
	mkdir -p $(BUILD)
	$(FPC) -Fu$(CORE) -FU$(BUILD) -FE$(BUILD) $(TESTS)/compilecheck.lpr

# Teste de integracao com um Firebird real (cria o banco na primeira vez).
#   make testfb FB=localhost/3050:/tmp/ibstudio_test.fdb TEST_USER=SYSDBA TEST_PASS=masterkey
testfb:
	mkdir -p $(BUILD)
	$(FPC) -Fu$(CORE) -FU$(BUILD) -FE$(BUILD) $(TESTS)/testfb.lpr
	@$(SPLIT_DSN); \
	mode=--create; if [ -f "$$db" ]; then mode=--connect; fi; \
	echo "testfb $$mode $$host/$$port:$$db"; \
	$(BUILD)/testfb $$mode "$$host" "$$port" "$$db" '$(TEST_USER)' '$(TEST_PASS)'

# Teste de fumaca da interface (precisa de um servidor X).
uismoke:
	cd $(TESTS) && $(LAZBUILD) uismoke.lpi
	@$(SPLIT_DSN); \
	echo "uismoke $$host/$$port:$$db"; \
	cd $(TESTS) && ./uismoke "$$host" "$$port" "$$db" '$(TEST_USER)' '$(TEST_PASS)'

run: app
	./ibstudio

clean:
	rm -rf lib ibstudio
	rm -f $(TESTS)/testcore $(TESTS)/uismoke $(TESTS)/*.o $(TESTS)/*.ppu
	rm -rf $(TESTS)/lib $(BUILD)
