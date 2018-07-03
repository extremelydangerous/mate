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
# XXX	BUILDLINK_DEPMETHOD.gnome-xcf-thumbnailer?=	build

BUILDLINK_TREE+=	gnome-xcf-thumbnailer

.if !defined(GNOME_XCF_THUMBNAILER_BUILDLINK3_MK)
GNOME_XCF_THUMBNAILER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-xcf-thumbnailer+=	gnome-xcf-thumbnailer>=1.0
BUILDLINK_PKGSRCDIR.gnome-xcf-thumbnailer?=	../../mate/gnome-xcf-thumbnailer

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../graphics/png/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.endif	# GNOME_XCF_THUMBNAILER_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-xcf-thumbnailer
