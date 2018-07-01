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
# XXX	BUILDLINK_DEPMETHOD.mate-panel?=	build

BUILDLINK_TREE+=	mate-panel

.if !defined(MATE_PANEL_BUILDLINK3_MK)
MATE_PANEL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mate-panel+=	mate-panel>=1.19.6nb3
BUILDLINK_PKGSRCDIR.mate-panel?=	../../mate/mate-panel

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../mate/libmateweather/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../mate/mate-settings-daemon/buildlink3.mk"
.include "../../mate/mate-menus/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libwnck3/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# MATE_PANEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-mate-panel
