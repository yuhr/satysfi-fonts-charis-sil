.PHONY: doc install uninstall lint watch

doc/manual.pdf: doc/manual.saty
	cd doc && satysfi manual.saty

doc: doc/manual.pdf

install:
	opam pin add -v "file://${PWD}"
	satyrographos install

uninstall:
	opam pin remove -v "file://${PWD}"
	satyrographos install

lint:
	satyrographos lint

watch:
	while true; do make --silent; sleep 1; done