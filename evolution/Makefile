# $NetBSD$

DISTNAME=	evolution-3.24.2
CATEGORIES=	mate
MASTER_SITES=	https://download.gnome.org/sources/evolution/3.24/
EXTRACT_SUFX=	.tar.xz
DIST_SUBDIR=	gnome3

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.gnome.org/sources/evolution/3.24/
COMMENT=	This is evolution 3.24.2

USE_CMAKE=	yes
USE_TOOLS+=	gettext-m4 gmake gm4 intltool msgfmt pkg-config

PKGCONFIG_OVERRIDE+=	evolution-calendar.pc.in
PKGCONFIG_OVERRIDE+=	evolution-mail.pc.in
PKGCONFIG_OVERRIDE+=	evolution-shell.pc.in
PKGCONFIG_OVERRIDE+=	src/libemail-engine/libemail-engine.pc.in

CWRAPPERS_APPEND.cc+=	-Wl,-R${LOCALBASE}/lib/evolution
CWRAPPERS_APPEND.cxx+=	-Wl,-R${LOCALBASE}/lib/evolution

CMAKE_ARGS+=	-DBOGOFILTER_COMMAND=${LOCALBASE}/bin/bogofilter
CMAKE_ARGS+=	-DWITH_SPAMASSASSIN=OFF

DEPENDS+=	itstool>0:../../textproc/itstool

.include "../../mate/evolution-data-server/buildlink3.mk"
.include "../../mate/libcryptui/buildlink3.mk"
.include "../../mate/bogofilter/buildlink3.mk"
.include "../../mate/bogofilter/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
