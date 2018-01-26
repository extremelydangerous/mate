# $NetBSD: Makefile,v 1.9 2017/11/23 17:20:19 wiz Exp $

PKGREVISION= 2
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-settings-daemon-${VERSION:R}.1
CATEGORIES=	mate

COMMENT=	MATE settings daemon

PKGCONFIG_OVERRIDE+=	data/mate-settings-daemon.pc.in

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

USE_LANGUAGES=		c c++

.include "options.mk"

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/mate-settings-daemon

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
OWN_DIRS+=	${PKG_SYSCONFDIR}/mate-settings-daemon/xrandr
CONF_FILES+=	${PREFIX}/share/examples/mate-settings-daemon/xdg/autostart/mate-settings-daemon.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/mate-settings-daemon.desktop

.include "../../devel/glib2/schemas.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"

.include "../../mate/libmatekbd/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/kbproto/buildlink3.mk"
.include "../../mate/libxklavier/buildlink3.mk"
.include "../../mate/libmatemixer/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
