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
# XXX	BUILDLINK_DEPMETHOD.py27-lztlib?=	build

BUILDLINK_TREE+=	py27-lztlib

.if !defined(PY27_LZTLIB_BUILDLINK3_MK)
PY27_LZTLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py27-lztlib+=	py27-lztlib>=1.0
BUILDLINK_PKGSRCDIR.py27-lztlib?=	../../devel/py-lztlib
.endif	# PY27_LZTLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-py27-lztlib
