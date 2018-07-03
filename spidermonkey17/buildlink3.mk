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
# XXX	BUILDLINK_DEPMETHOD.spidermonkey17?=	build

BUILDLINK_TREE+=	spidermonkey17

.if !defined(SPIDERMONKEY17_BUILDLINK3_MK)
SPIDERMONKEY17_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.spidermonkey17+=	spidermonkey17>=17.0.0nb1
BUILDLINK_PKGSRCDIR.spidermonkey17?=	../../lang/spidermonkey17

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/nspr/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.endif	# SPIDERMONKEY17_BUILDLINK3_MK

BUILDLINK_TREE+=	-spidermonkey17
