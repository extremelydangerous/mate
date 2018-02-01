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
# XXX	BUILDLINK_DEPMETHOD.libpst?=	build

BUILDLINK_TREE+=	libpst

.if !defined(LIBPST_BUILDLINK3_MK)
LIBPST_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpst+=	libpst>=0.6.71
BUILDLINK_PKGSRCDIR.libpst?=	../../mate/libpst

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/libgsf/buildlink3.mk"
.endif	# LIBPST_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpst
