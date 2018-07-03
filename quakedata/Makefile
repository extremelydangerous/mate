# $NetBSD$

PKGNAME=	quakedata-1.0
PKGREVISION=	1
CATEGORIES?=		games mate
MASTER_SITES=	https://www.mirafiori.com/ftp/pub/gaming/
EXTRACT_SUFX=	.pak
DISTFILES=	pak0.pak pak1.pak

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://www.mirafiori.com/ftp/pub/gaming/
COMMENT=	TODO: Short description of the package
NO_BUILD=	yes

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
INSTALLATION_DIRS=share/quake/id1

do-install:
	$(INSTALL_DATA) ${WRKSRC}/*.pak ${DESTDIR}${PREFIX}/share/quake/id1

.include "../../mk/bsd.pkg.mk"
