# $NetBSD$

PKGNAME=        ${PYPKGPREFIX}-${DISTNAME}
DISTNAME=	PyQt5_gpl-5.10.1
CATEGORIES=	mate
MASTER_SITES=	https://sourceforge.net/projects/pyqt/files/PyQt5/PyQt-5.10.1/

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://sourceforge.net/projects/pyqt/files/PyQt5/PyQt-5.10.1/
COMMENT=	PYTHON qt5 binding

.include	"../../mk/bsd.fast.prefs.mk"
.include	"options.mk"

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config
CONFIGURE_ARGS+=	-b ${PREFIX}/bin
CONFIGURE_ARGS+=	-d ${PREFIX}/${PYSITELIB}
CONFIGURE_ARGS+=	-q ${QTDIR}/bin/qmake
CONFIGURE_ARGS+=	--confirm-license
#CONFIGURE_ARGS+=	--qsci-api
CONFIGURE_ARGS+=	--sip ${BUILDLINK_PREFIX.py-sip}/bin/sip${PYVERSSUFFIX}
CONFIGURE_ARGS+=	--verbose

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}

PLIST_VARS+=		webkit
PY_PATCHPLIST=		yes

#SUBST_CLASSES+=		x11lib
#SUBST_STAGE.x11lib=	post-patch
#SUBST_MESSAGE.x11lib=	Fixing rpath for X11 and pulseaudio libraries.
#SUBST_FILES.x11lib+=	configure.py
#SUBST_FILES.x11lib+=	designer/designer.pro-in
#SUBST_FILES.x11lib+=	qmlscene/qmlscene.pro-in
#SUBST_SED.x11lib+=	-e 's,@X11LIB@,${X11BASE}/lib,'
#SUBST_SED.x11lib+=	-e 's,@PREFIX@,${PREFIX},'

.if empty(PKG_OPTIONS:Mopengl)
DISABLED_FEATURES+=	PyQt_Desktop_OpenGL PyQt_qreal_double PyQt_OpenGL
ENABLE_MODULES+=	QtCore QtWidgets QtGui
.endif
CONFIGURE_ARGS+=	--configuration  ${CFGFILE}
CFGFILE=		/tmp/pyqt.cfg

confhelp:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${PYTHONBIN} configure.py --help

do-configure:
	echo "py_platform = netbsd" > ${CFGFILE}
	echo "qt_shared = True" >> ${CFGFILE}
.if empty(PKG_OPTIONS:Mopengl)
	echo "pyqt_modules = ${ENABLE_MODULES}" >> ${CFGFILE}
	echo "pyqt_disabled_features = ${DISABLED_FEATURES}" >> ${CFGFILE}
.endif
	echo "[Qt 5.10.1]" >> ${CFGFILE}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${PYTHONBIN} configure.py ${CONFIGURE_ARGS}
	rm -f ${CFGFILE}

PYTHON_VERSION_REQD?=	36
GCC_REQD=		5.0

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
.include "../../lang/python/extension.mk"

.include "../../mk/bsd.pkg.mk"
