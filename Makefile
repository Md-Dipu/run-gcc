PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1

install:
	install -Dm755 src/run-gcc $(DESTDIR)$(BINDIR)/run-gcc
	install -Dm644 man/run-gcc.1 $(DESTDIR)$(MANDIR)/run-gcc.1

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/run-gcc
	rm -f $(DESTDIR)$(MANDIR)/run-gcc.1

test:
	bats tests/