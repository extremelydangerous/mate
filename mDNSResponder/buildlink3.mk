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
# XXX	BUILDLINK_DEPMETHOD.mDNSResponder?=	build

BUILDLINK_TREE+=	mDNSResponder

.if !defined(MDNSRESPONDER_BUILDLINK3_MK)
MDNSRESPONDER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mDNSResponder+=	mDNSResponder>=258.14nb3
BUILDLINK_PKGSRCDIR.mDNSResponder?=	../../net/mDNSResponder

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/librfuncs/buildlink3.mk"
.endif	# MDNSRESPONDER_BUILDLINK3_MK

BUILDLINK_TREE+=	-mDNSResponder
