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
# XXX	BUILDLINK_DEPMETHOD.paman?=	build

BUILDLINK_TREE+=	paman

.if !defined(PAMAN_BUILDLINK3_MK)
PAMAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.paman+=	paman>=0.9.4nb37
BUILDLINK_PKGSRCDIR.paman?=	../../mate/paman

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../mate/pulseaudio/buildlink3.mk"
.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/libglademm/buildlink3.mk"
.endif	# PAMAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-paman
