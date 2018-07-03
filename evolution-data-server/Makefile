# $NetBSD$

DISTNAME=	evolution-data-server-3.24.2
CATEGORIES=	mate
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evolution-data-server/3.24/}
EXTRACT_SUFX=	.tar.xz
DIST_SUBDIR=    gnome3

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://ftp.gnome.org/pub/GNOME/sources/evolution-data-server/3.24/
COMMENT=	evolution version 3.24
#LICENSE=	# TODO: (see mk/license.mk)

GCC_REQD=	5.0
BDB_ACCEPTED=	db4 db5
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config bison gmake intltool msgfmt
USE_LANGUAGES=	c c++11

CMAKE_ARGS+=	-DENABLE_UOA=OFF
#CMAKE_ARGS+=	-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON

PKGCONFIG_OVERRIDE+=	evolution-data-server.pc.in
PKGCONFIG_OVERRIDE+=	src/addressbook/libebook-contacts/libebook-contacts.pc.in
PKGCONFIG_OVERRIDE+=	src/addressbook/libebook/libebook.pc.in
PKGCONFIG_OVERRIDE+=	src/addressbook/libedata-book/libedata-book.pc.in
PKGCONFIG_OVERRIDE+=	src/calendar/libecal/libecal.pc.in
PKGCONFIG_OVERRIDE+=	src/calendar/libedata-cal/libedata-cal.pc.in
PKGCONFIG_OVERRIDE+=	src/camel/camel.pc.in
PKGCONFIG_OVERRIDE+=	src/libebackend/libebackend.pc.in
PKGCONFIG_OVERRIDE+=	src/libedataserver/libedataserver.pc.in
PKGCONFIG_OVERRIDE+=	src/libedataserverui/libedataserverui.pc.in

BUILDLINK_TRANSFORM+=	l:db:${BDB_TYPE}
BUILDLINK_TRANSFORM+=	rm:-ldl
BUILDLINK_TRANSFORM+=	rm:-lsocket
CWRAPPERS_APPEND.cc+=	-Wl,-R${LOCALBASE}/lib/evolution-data-server
CWRAPPERS_APPEND.cxx+=	-Wl,-R${LOCALBASE}/lib/evolution-data-server

.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gnome-desktop3/buildlink3.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../mate/gcr/buildlink3.mk"
.include "../../mate/webkit-gtk/buildlink3.mk"
.include "../../net/gnome-online-accounts/buildlink3.mk"
.include "../../devel/gperf/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../mate/libgweather/buildlink3.mk"
.include "../../devel/nspr/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../net/libgdata/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../time/libical/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../databases/shared-mime-info/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../mate/gnome-autoar/buildlink3.mk"
.include "../../mate/libpst/buildlink3.mk"
.include "../../mail/libytnef/buildlink3.mk"
.include "../../textproc/gtkspell/buildlink3.mk"
.include "../../mk/bdb.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

.include "../Makefile"
