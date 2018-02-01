# $NetBSD: Makefile,v 1.9 2017/11/23 17:20:05 wiz Exp $

PKGREVISION= 2
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-media-${VERSION:R}.1
CATEGORIES?=	multimedia mate

COMMENT=	MATE media tools for MATE Desktop
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.1 AND gnu-lgpl-v2

EXTRACT_USING=	gtar

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/mate-media

.include "options.mk"

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../mate/libmatemixer/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../mate/mate-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
