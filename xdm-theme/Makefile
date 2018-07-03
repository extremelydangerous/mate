PKGNAME=	xdm-theme-1.0
CATEGORIES=	x11 lzt
MASTER_SITES=
DISTNAME=

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.k1.com.br/
COMMENT=	A simple xdm theme
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/${PKGNAME}

pre-configure:
	mkdir -p ${WRKSRC}
	cp -rpf ${FILESDIR}/* ${WRKSRC}

pre-install:
	mkdir -p ${DESTDIR}${PKG_SYSCONFDIR}/xdm

do-install:
	cd ${FILESDIR};find * | grep -v CVS | cpio -pdvm ${DESTDIR}${PKG_SYSCONFDIR}/xdm
		
DEPENDS+=	xv:../../graphics/xv
DEPENDS+=	rdesktop:../../net/rdesktop
.include	"../../mk/bsd.pkg.mk"
