# $NetBSD: Makefile,v 1.10 2017/11/30 16:45:38 adam Exp $

PKGREVISION= 3
.include "../../mate/mate/Makefile.common"

DISTNAME=	caja-extensions-${VERSION:R}.1
CATEGORIES?=	sysutils mate

COMMENT=	Set of extensions for Caja

PKGCONFIG_OVERRIDE+=	sendto/caja-sendto.pc.in

.include "../../devel/glib2/schemas.mk"

.include "../../mate/caja/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../net/gupnp/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
