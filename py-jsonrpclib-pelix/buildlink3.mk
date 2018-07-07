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
# XXX	BUILDLINK_DEPMETHOD.py36-jsonrpclib-pelix?=	build

BUILDLINK_TREE+=	py36-jsonrpclib-pelix

.if !defined(PY36_JSONRPCLIB_PELIX_BUILDLINK3_MK)
PY36_JSONRPCLIB_PELIX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py36-jsonrpclib-pelix+=	py36-jsonrpclib-pelix>=0.3.1
BUILDLINK_PKGSRCDIR.py36-jsonrpclib-pelix?=	../../mate/py-jsonrpclib-pelix
.endif	# PY36_JSONRPCLIB_PELIX_BUILDLINK3_MK

BUILDLINK_TREE+=	-py36-jsonrpclib-pelix
