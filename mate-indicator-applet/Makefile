# $NetBSD: Makefile,v 1.6 2017/11/23 17:20:19 wiz Exp $

PKGREVISION= 1
VERSION=1.18.0
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-indicator-applet-${VERSION}
CATEGORIES?=		x11 mate

COMMENT=	MATE indicator applet

.include "../../mate/mate-panel/buildlink3.mk"
.include "../../devel/libindicator3/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
