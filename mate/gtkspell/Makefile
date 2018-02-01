# $NetBSD$

DISTNAME=	gtkspell3-3.0.9
CATEGORIES?=	textproc mate
MASTER_SITES=	https://sourceforge.net/projects/gtkspell/files/3.0.9/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://sourceforge.net/projects/gtkspell/files/3.0.9/
COMMENT=	Gtk spell version 3

.include	"../../mate/mate/Makefile.common"

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	gtkspell/gtkspell3-3.0.pc.in
PKGCONFIG_OVERRIDE+=	gtkspell/gtkspell3-2.0.pc.in

USE_TOOLS+=		gmake intltool msgfmt perl pkg-config \
			aclocal autoconf autoheader automake
pre-configure:
	cd ${WRKSRC} &&	\
		aclocal && \
		autoconf &&	\
		autoheader &&	\
		automake

.include "../../textproc/enchant/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
