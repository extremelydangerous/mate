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
# XXX	BUILDLINK_DEPMETHOD.mate-applets?=	build

BUILDLINK_TREE+=	mate-applets

.if !defined(MATE_APPLETS_BUILDLINK3_MK)
MATE_APPLETS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mate-applets+=	mate-applets>=1.19.4nb3
BUILDLINK_PKGSRCDIR.mate-applets?=	../../mate/mate-applets

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../mate/mate-panel/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../mate/mate-settings-daemon/buildlink3.mk"
.include "../../mate/libmateweather/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libwnck3/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../fonts/gucharmap/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtksourceview3/buildlink3.mk"
.include "../../mate/libxklavier/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# MATE_APPLETS_BUILDLINK3_MK

BUILDLINK_TREE+=	-mate-applets
