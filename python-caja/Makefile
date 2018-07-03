# $NetBSD$

DISTNAME=	python-caja-1.19.0
CATEGORIES=	mate
MASTER_SITES=	http://pub.mate-desktop.org/releases/1.19/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://pub.mate-desktop.org/releases/1.19/
COMMENT=	TODO: Short description of the package

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

PKGCONFIG_OVERRIDE+=	caja-python.pc.in
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config \
			aclocal autoconf autoheader automake gettext-m4

pre-configure:
	cd ${WRKSRC} &&	\
		aclocal && \
		autoconf &&	\
		autoheader &&	\
		automake --force

#.include "../../lang/python/application.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../mate/caja-extensions/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
