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
# XXX	BUILDLINK_DEPMETHOD.f2c?=	build

BUILDLINK_TREE+=	f2c

.if !defined(F2C_BUILDLINK3_MK)
F2C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.f2c+=	f2c>=20160102
BUILDLINK_PKGSRCDIR.f2c?=	../../lang/f2c
.endif	# F2C_BUILDLINK3_MK

BUILDLINK_TREE+=	-f2c
