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
# XXX	BUILDLINK_DEPMETHOD.userppp?=	build

BUILDLINK_TREE+=	userppp

.if !defined(USERPPP_BUILDLINK3_MK)
USERPPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.userppp+=	userppp>=001107nb3
BUILDLINK_PKGSRCDIR.userppp?=	../../net/userppp
.endif	# USERPPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-userppp
