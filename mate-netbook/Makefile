# $NetBSD: Makefile,v 1.6 2017/11/23 17:20:15 wiz Exp $

PKGREVISION= 1
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-netbook-${VERSION:R}.1
CATEGORIES=	mate

COMMENT=	Simple window management tool for MATE desktop

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/mate-netbook

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
CONF_FILES+=	${PREFIX}/share/examples/mate-netbook/xdg/autostart/mate-maximus-autostart.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/mate-maximus-autostart.desktop
.include "../../devel/glib2/schemas.mk"

.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../mate/mate-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libwnck3/buildlink3.mk"
.include "../../x11/libfakekey/buildlink3.mk"
.include "../../x11/libunique/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
