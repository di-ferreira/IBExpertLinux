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

.PHONY: all app test check uismoke run clean

all: app

app:
	$(LAZBUILD) ibstudio.lpi

test:
	cd $(TESTS) && $(FPC) -Fu../$(CORE) testcore.lpr
	cd $(TESTS) && ./testcore --all --format=plain

check:
	mkdir -p $(BUILD)
	$(FPC) -Fu$(CORE) -FU$(BUILD) -FE$(BUILD) $(TESTS)/compilecheck.lpr

# Teste de integracao com um Firebird real (cria o banco).
#   make testfb FB=localhost/3050:/tmp/ibstudio_test.fdb USER=SYSDBA PASS=masterkey
testfb:
	mkdir -p $(BUILD)
	$(FPC) -Fu$(CORE) -FU$(BUILD) -FE$(BUILD) $(TESTS)/testfb.lpr
	$(BUILD)/testfb --create $(FB) $(USER) $(PASS)

# Teste de fumaca da interface (precisa de um servidor X).
uismoke:
	cd $(TESTS) && $(LAZBUILD) uismoke.lpi
	cd $(TESTS) && ./uismoke $(FB) $(USER) $(PASS)

run: app
	./ibstudio

clean:
	rm -rf lib ibstudio
	rm -f $(TESTS)/testcore $(TESTS)/uismoke $(TESTS)/*.o $(TESTS)/*.ppu
	rm -rf $(TESTS)/lib $(BUILD)
