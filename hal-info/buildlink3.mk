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
# XXX	BUILDLINK_DEPMETHOD.hal-info?=	build

BUILDLINK_TREE+=	hal-info

.if !defined(HAL_INFO_BUILDLINK3_MK)
HAL_INFO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hal-info+=	hal-info>=20091130nb5
BUILDLINK_PKGSRCDIR.hal-info?=	../../sysutils/hal-info
.endif	# HAL_INFO_BUILDLINK3_MK

BUILDLINK_TREE+=	-hal-info
