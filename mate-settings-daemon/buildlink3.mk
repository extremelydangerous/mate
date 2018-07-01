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
# XXX	BUILDLINK_DEPMETHOD.mate-settings-daemon?=	build

BUILDLINK_TREE+=	mate-settings-daemon

.if !defined(MATE_SETTINGS_DAEMON_BUILDLINK3_MK)
MATE_SETTINGS_DAEMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mate-settings-daemon+=	mate-settings-daemon>=1.19.2nb2
BUILDLINK_PKGSRCDIR.mate-settings-daemon?=	../../mate/mate-settings-daemon

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../mate/libmatekbd/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../mate/libxklavier/buildlink3.mk"
.include "../../mate/libmatemixer/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# MATE_SETTINGS_DAEMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-mate-settings-daemon
