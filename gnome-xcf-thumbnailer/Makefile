# $NetBSD$

DISTNAME=	gnome-xcf-thumbnailer-1.0
CATEGORIES=	mate
MASTER_SITES=	https://download.gnome.org/sources/gnome-xcf-thumbnailer/1.0/

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.gnome.org/sources/gnome-xcf-thumbnailer/1.0/
COMMENT=	thumbnail for gimp xcf files

GNU_CONFIGURE=	yes
USE_TOOLS=	gmake pkg-config

GCONF_SCHEMAS+=	gnome-xcf-thumbnailer.schemas

CFLAGS+=	-Wno-deprecated-declarations

DEPENDS+=       ImageMagick>=6.0:../../graphics/ImageMagick
INSTALLATION_DIRS+= share/thumbnailers	

post-install:
	${INSTALL_SCRIPT} files/gnome-xcf.thumbnailer ${DESTDIR}${PREFIX}/share/thumbnailers

.include "../../graphics/png/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
