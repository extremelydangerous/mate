# $NetBSD$

DISTNAME=	libpst-0.6.71
CATEGORIES=	mate
MASTER_SITES=	http://www.five-ten-sg.com/libpst/packages/

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.five-ten-sg.com/libpst/packages/
COMMENT=	libpst mail

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

PY_PATCHPLIST=  YES		#THIS BUILDS the PLIST!!!

PKGCONFIG_OVERRIDE+=	libpst.pc.in

USE_TOOLS+=		gmake intltool msgfmt perl pkg-config \
			aclocal autoconf autoheader automake gettext-m4

CONFIGURE_ARGS=		--disable-python --enable-libpst-shared

pre-configure:
	cd ${WRKSRC} &&	\
		aclocal && \
		autoconf &&	\
		autoheader &&	\
		automake

.include "../../devel/libgsf/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
