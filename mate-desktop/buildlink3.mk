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
# XXX	BUILDLINK_DEPMETHOD.mate-desktop?=	build

BUILDLINK_TREE+=	mate-desktop

.if !defined(MATE_DESKTOP_BUILDLINK3_MK)
MATE_DESKTOP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mate-desktop+=	mate-desktop>=1.19.3nb1
BUILDLINK_PKGSRCDIR.mate-desktop?=	../../mate/mate-desktop

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/dconf/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# MATE_DESKTOP_BUILDLINK3_MK

BUILDLINK_TREE+=	-mate-desktop
