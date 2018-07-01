# $NetBSD: Makefile,v 1.10 2017/11/30 16:45:42 adam Exp $

PYTHON_VERSIONS_ACCEPTED=	27
PKGREVISION= 3
.include "../../mate/mate/Makefile.common"

DISTNAME=	mate-applets-${VERSION:R}.4
CATEGORIES?=		x11 mate

COMMENT=	MATE panel applets

TOOL_DEPENDS+=	itstool-[0-9]*:../../textproc/itstool
TOOL_DEPENDS+=	libxml2-[0-9]*:../../textproc/libxml2 # for xmllint

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--libexecdir=${PREFIX}/libexec/mate-applets

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/mate-applets

MAKE_DIRS+=	${PKG_SYSCONFDIR}/sound/events

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} != "Darwin" && ${OPSYS} != "SunOS"
CONF_FILES+=	${PREFIX}/share/examples/mate-applets/sound/events/mate-battstat_applet.soundlist \
		${PKG_SYSCONFDIR}/sound/events/mate-battstat_applet.soundlist
.endif

PLIST_VARS=	batt
.if ${OPSYS} != "Darwin" && ${OPSYS} != "SunOS"
PLIST.batt=	yes
.endif

.include "options.mk"


REPLACE_PYTHON+=	invest-applet/invest/chart.py
REPLACE_PYTHON+=	invest-applet/invest/invest-applet.py
REPLACE_PYTHON+=	invest-applet/invest/mate-invest-chart

.include "../../mate/mate-panel/buildlink3.mk"
.include "../../mate/mate-settings-daemon/buildlink3.mk"
.include "../../mate/libmateweather/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../fonts/gucharmap/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtksourceview3/buildlink3.mk"
.include "../../mate/libxklavier/buildlink3.mk"
PY_PATCHPLIST=	yes
.include "../../lang/python/extension.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
