.POSIX:

include config.mk

SRC = docker-credential-bw gpg-bw ssh-askpass-bw

all:

clean:
	rm -f bitwarden-helpers.tar.gz

dist: clean
	mkdir -p bitwarden-helpers
	cp -R LICENSE README.md config.mk Makefile $(SRC) bitwarden-helpers
	tar czf bitwarden-helpers.tar.gz bitwarden-helpers
	rm -rf bitwarden-helpers

install:
	install -Dt $(DESTDIR)$(PREFIX)/bin -m755 $(SRC)

uninstall:
	for i in $(SRC); do rm -f $(DESTDIR)$(PREFIX)/bin/$$i; done

.PHONY: all clean dist install uninstall
