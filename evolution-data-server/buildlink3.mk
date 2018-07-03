# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.17.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.evolution-data-server?=	build

BUILDLINK_TREE+=	evolution-data-server

.if !defined(EVOLUTION_DATA_SERVER_BUILDLINK3_MK)
EVOLUTION_DATA_SERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.evolution-data-server+=	evolution-data-server>=3.24.2
BUILDLINK_PKGSRCDIR.evolution-data-server?=	../../mate/evolution-data-server

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX

GCC_REQD=       5.0
BDB_ACCEPTED=   db4 db5

BUILDLINK_TRANSFORM+=	rm:-ldl
BUILDLINK_TRANSFORM+=	rm:-lsocket

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
.endif	# EVOLUTION_DATA_SERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-evolution-data-server
