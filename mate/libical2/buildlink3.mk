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
# XXX	BUILDLINK_DEPMETHOD.libical?=	build

BUILDLINK_TREE+=	libical

.if !defined(LIBICAL_BUILDLINK3_MK)
LIBICAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libical+=	libical>=2.0.0
BUILDLINK_PKGSRCDIR.libical?=	../../mate/libical2

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../textproc/icu/buildlink3.mk"
.endif	# LIBICAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libical
