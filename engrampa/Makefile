# $NetBSD: Makefile,v 1.7 2017/11/23 17:19:47 wiz Exp $

PKGREVISION= 1
.include "../../mate/mate/Makefile.common"

DISTNAME=	engrampa-${VERSION:R}.2
CATEGORIES?=		archivers mate

COMMENT=	Archive manager utility for the MATE Environment

USE_TOOLS+=	gtar:run gzip:run bzip2:run unzip:run zip:run xz:run

.include "../../devel/glib2/schemas.mk"

.include "../../mate/caja/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
