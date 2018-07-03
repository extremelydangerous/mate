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
# XXX	BUILDLINK_DEPMETHOD.quakedata?=	build

BUILDLINK_TREE+=	quakedata

.if !defined(QUAKEDATA_BUILDLINK3_MK)
QUAKEDATA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.quakedata+=	quakedata>=1.0nb1
BUILDLINK_PKGSRCDIR.quakedata?=	../../games/quakedata
.endif	# QUAKEDATA_BUILDLINK3_MK

BUILDLINK_TREE+=	-quakedata
