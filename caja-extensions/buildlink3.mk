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
# XXX	BUILDLINK_DEPMETHOD.caja-extensions?=	build

BUILDLINK_TREE+=	caja-extensions

.if !defined(CAJA_EXTENSIONS_BUILDLINK3_MK)
CAJA_EXTENSIONS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.caja-extensions+=	caja-extensions>=1.19.0nb3
BUILDLINK_PKGSRCDIR.caja-extensions?=	../../sysutils/caja-extensions

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../mate/caja/buildlink3.mk"
.include "../../mate/mate-desktop/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# CAJA_EXTENSIONS_BUILDLINK3_MK

BUILDLINK_TREE+=	-caja-extensions
