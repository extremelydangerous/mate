# $NetBSD: Makefile,v 1.7 2017/11/23 17:20:13 wiz Exp $

PKGREVISION= 1

#USE_PKGSRC_GCC=		yes
#CC_REQD=		5.0
.include "../../devel/glibmm/buildlink3.mk"

.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-system-monitor-${VERSION}
CATEGORIES?=		sysutils mate

COMMENT=	MATE system monitor


TOOL_DEPENDS+=	itstool-[0-9]*:../../textproc/itstool
TOOL_DEPENDS+=	libxml2-[0-9]*:../../textproc/libxml2 # for xmllint

USE_LANGUAGES=	c c++11


.include "../../devel/glib2/schemas.mk"

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libwnck3/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtkmm3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
