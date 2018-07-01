# $NetBSD: Makefile,v 1.9 2017/11/23 17:20:19 wiz Exp $

PKGREVISION= 2
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-settings-daemon-${VERSION:R}.2
CATEGORIES?=		x11 mate

COMMENT=	MATE settings daemon

PKGCONFIG_OVERRIDE+=	data/mate-settings-daemon.pc.in

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

USE_LANGUAGES=		c c++

.include "options.mk"


EGDIR=			${PREFIX}/share/examples/mate-settings-daemon

INSTALL_MAKE_FLAGS+=	sysconfdir=${EGDIR}

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
MAKE_DIRS+=	${PKG_SYSCONFDIR}/xrdb
OWN_DIRS+=	${PKG_SYSCONFDIR}/mate-settings-daemon/xrandr
CONF_FILES+=	${EGDIR}/xdg/autostart/mate-settings-daemon.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/mate-settings-daemon.desktop
.for f in xrdb/Editres.ad xrdb/Emacs.ad xrdb/General.ad \
	xrdb/Motif.ad xrdb/Tk.ad xrdb/Xaw.ad
CONF_FILES+=	${EGDIR}/$f ${PKG_SYSCONFDIR}/$f
.endfor

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
#.include "../../x11/kbproto/buildlink3.mk"
.include "../../mate/libxklavier/buildlink3.mk"
.include "../../mate/libmatemixer/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
