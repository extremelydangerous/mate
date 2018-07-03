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
# XXX	BUILDLINK_DEPMETHOD.python-caja?=	build

BUILDLINK_TREE+=	python-caja

.if !defined(PYTHON_CAJA_BUILDLINK3_MK)
PYTHON_CAJA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-caja+=	python-caja>=1.19.0
BUILDLINK_PKGSRCDIR.python-caja?=	../../mate/python-caja

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/py-gobject3/buildlink3.mk"
.include "../../mate/caja-extensions/buildlink3.mk"
.endif	# PYTHON_CAJA_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-caja
