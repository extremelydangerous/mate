# $NetBSD$

PKGNAME=	f2c-20160102
DISTNAME=	src
CATEGORIES?=	lang mate
MASTER_SITES=	http://www.netlib.org/f2c/
EXTRACT_SUFX=	.tgz

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.netlib.org/f2c/
COMMENT=	TODO: Short description of the package

INSTALLATION_DIRS=	${PKGMANDIR}/man1 share/doc/f2c bin

pre-configure:
	cd ${WRKSRC};cp makefile.u Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/f2c ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/f2c-f77 ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/f2c.1 \
		${DESTDIR}${LOCALBASE}/${PKGMANDIR}/man1
.if !empty(MANINSTALL:Mcatinstall)
.  if defined(CATMAN_SECTION_SUFFIX) && !empty(CATMAN_SECTION_SUFFIX:M[Yy][Ee][Ss])
	${INSTALL_DATA} ${WRKSRC}/f2c.1  ${DESTDIR}${PREFIX}/${PKGMANDIR}/cat1/f2c.1
.  else
	${INSTALL_DATA} ${WRKSRC}/f2c.1  ${DESTDIR}${PREFIX}/${PKGMANDIR}/cat1/f2c.0
.  endif
.endif
.for f in changes
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/share/doc/f2c/${f}
.endfor
.include "../../mk/bsd.pkg.mk"
