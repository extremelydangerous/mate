.if exists(/usr/bin/clang)
CC=	clang
.endif

all: truncate runbatch findprinter xtermtitle

install: all
	install -m 755 runbatch truncate xtermtitle ${DESTDIR}${PREFIX}/bin
	install -m 755 findprinter ${DESTDIR}${PREFIX}/bin
	install -m 644 truncate.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
.if 0
	install -m 755 wifimgr ${DESTDIR}${PREFIX}/bin
	install -m 644 wifimgr.glade ${DESTDIR}${PKG_SYSCONFDIR}/glade/wifimgr
	install -m 644 wifimgr.sql ${DESTDIR}${PREFIX}/share/examples/wifimgr
	install -m 644 sudoers.d/wifimgr ${DESTDIR}${PREFIX}/etc/sudoers.d
.endif
	rm -f truncate expand_number.o runbatch

truncate: truncate.c expand_number.o
	${CC} truncate.c expand_number.o -o $@

clean:
	rm -f truncate expand_number.o runbatch xtermtitle
