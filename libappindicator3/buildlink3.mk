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
# XXX	BUILDLINK_DEPMETHOD.libappindicator3?=	build

BUILDLINK_TREE+=	libappindicator3

.if !defined(LIBAPPINDICATOR3_BUILDLINK3_MK)
LIBAPPINDICATOR3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libappindicator3+=	libappindicator3>=12.10.0nb4
BUILDLINK_PKGSRCDIR.libappindicator3?=	../../mate/libappindicator3

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../graphics/cairo/buildlink3.mk"
.include "../../devel/libindicator3/buildlink3.mk"
.include "../../devel/libdbusmenu-gtk3/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.endif	# LIBAPPINDICATOR3_BUILDLINK3_MK

BUILDLINK_TREE+=	-libappindicator3
