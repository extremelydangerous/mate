# $NetBSD$

GITHUB_PROJECT=	minitube
DISTNAME=	2.9
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	mate
MASTER_SITES=	${MASTER_SITE_GITHUB:=flaviotordini/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://github.com/flaviotordini/minitube/
COMMENT=	cliente player youtube
#LICENSE=	# TODO: (see mk/license.mk)

WRKSRC=		${WRKDIR}/minitube-2.9
PYTHON_VERSIONS_ACCEPTED=	27 # as if 5.212.0-alpha2

.include "../../mk/dlopen.buildlink3.mk"
BUILDLINK_TRANSFORM+=   opt:-ldl:${BUILDLINK_LDADD.dl:M*}

USE_LANGUAGES=          c c++11
USE_TOOLS+=             gmake perl:build pkg-config bison flex sed

do-configure:
	cd ${WRKSRC} && ${QTDIR}/bin/qmake
#	    QMAKE_CXXFLAGS=-DBOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS
#	cd ${WRKSRC}/plugins && ${QTDIR}/bin/qmake \
#	    INSTALLS+=target target.path=${PREFIX}/lib/librecad/plugins


.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
