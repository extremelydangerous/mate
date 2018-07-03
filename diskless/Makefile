PKGNAME=	diskless-1.0
CATEGORIES=	sysutils lzt
MASTER_SITES=

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.k1.com.br/
COMMENT=	rc.d script to make NetBSD work diskless

WRKSRC=		${WRKDIR}/${PKGNAME}

INSTALLATION_DIRS+=	share/examples/rc.d

do-install:
	${INSTALL_SCRIPT} files/diskless  ${DESTDIR}${PREFIX}/share/examples/rc.d

pre-configure:
	mkdir -p ${WRKSRC}
	cp -rp files/* ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
