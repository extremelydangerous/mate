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
# XXX	BUILDLINK_DEPMETHOD.pluma?=	build

BUILDLINK_TREE+=	pluma

.if !defined(PLUMA_BUILDLINK3_MK)
PLUMA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pluma+=	pluma>=1.18.2nb2
BUILDLINK_PKGSRCDIR.pluma?=	../../mate/pluma

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../devel/libpeas/buildlink3.mk"
#.include "../../mate/gnome-vfs/buildlink3.mk"
#.include "../../mate/mate-desktop/buildlink3.mk"
#.include "../../x11/gtksourceview3/buildlink3.mk"
#.include "../../x11/gtk3/buildlink3.mk"
.endif	# PLUMA_BUILDLINK3_MK

BUILDLINK_TREE+=	-pluma
