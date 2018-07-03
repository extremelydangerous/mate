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
# XXX	BUILDLINK_DEPMETHOD.libf2c?=	build

BUILDLINK_TREE+=	libf2c

.if !defined(LIBF2C_BUILDLINK3_MK)
LIBF2C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libf2c+=	libf2c>=20160102
BUILDLINK_PKGSRCDIR.libf2c?=	../../devel/libf2c
.endif	# LIBF2C_BUILDLINK3_MK

BUILDLINK_TREE+=	-libf2c
