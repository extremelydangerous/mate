# $NetBSD: Makefile,v 1.7 2017/11/23 17:19:44 wiz Exp $

PKGREVISION= 1
.include "../../mate/mate/Makefile.common"

DISTNAME=	marco-${VERSION:R}.2
CATEGORIES?=		wm mate

COMMENT=	MATE Marco is a fork of GNOME Metacity

USE_LANGUAGES=	c99

BUILD_DEPENDS+=		gdk-pixbuf2-[0-9]*:../../graphics/gdk-pixbuf2
TOOL_DEPENDS+=		itstool-[0-9]*:../../textproc/itstool
TOOL_DEPENDS+=		libxml2-[0-9]*:../../textproc/libxml2 # for xmllint
DEPENDS+=		zenity-[0-9]*:../../x11/zenity

PKGCONFIG_OVERRIDE+=	src/libmarco-private.pc.in

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
