# $NetBSD: Makefile,v 1.6 2017/11/23 17:20:13 wiz Exp $

PKGREVISION= 1
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-sensors-applet-${VERSION:R}.1
CATEGORIES?=		sysutils mate

COMMENT=	MATE Sensors applets

TOOL_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt # for xsltproc

.include "../../devel/glib2/schemas.mk"

.include "../../mate/mate-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
