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
# XXX	BUILDLINK_DEPMETHOD.py36-PyQt5_gpl?=	build

BUILDLINK_TREE+=	py36-PyQt5_gpl

.if !defined(PY36_PYQT5_GPL_BUILDLINK3_MK)
PY36_PYQT5_GPL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py36-PyQt5_gpl+=	py36-PyQt5_gpl>=5.10.1
BUILDLINK_PKGSRCDIR.py36-PyQt5_gpl?=	../../mate/py-qt5

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../sysutils/dbus-python-common/buildlink3.mk"
.include "../../sysutils/py-dbus/buildlink3.mk"
.include "../../x11/py-sip/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../x11/qt5-qtlocation/buildlink3.mk"
.include "../../x11/qt5-qtmultimedia/buildlink3.mk"
.include "../../x11/qt5-qtsensors/buildlink3.mk"
.include "../../x11/qt5-qtsvg/buildlink3.mk"
.include "../../x11/qt5-qttools/buildlink3.mk"
.endif	# PY36_PYQT5_GPL_BUILDLINK3_MK

BUILDLINK_TREE+=	-py36-PyQt5_gpl
