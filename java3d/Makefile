# $NetBSD$

DISTNAME=	java3d-1.5.2
CATEGORIES=	mate
MASTER_SITES=	https://sites.google.com/site/daemonwizard/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	nervoso@k1.om.br
HOMEPAGE=	https://sites.google.com/site/daemonwizard/
COMMENT=	3d support for java

USE_LANGUAGES=	c c++

USE_JAVA=       run
USE_JAVA2=      yes

INSTALLATION_DIRS+=	${PKG_JAVA_HOME:S;/usr/pkg/;;}/jre/lib/ext
INSTALLATION_DIRS+=	${PKG_JAVA_HOME:S;/usr/pkg/;;}/jre/lib/${MACHINE_ARCH}
INSTALLATION_DIRS+=	share/doc/java3d

DOCSSRC=		${WRKSRC}/j3d-core/build/netbsd/javadocs/docs-public

GENERATE_PLIST=		cd ${DESTDIR}${LOCALBASE};find * \! -type d;

do-build:
	cd ${WRKSRC}/vecmath && ${SETENV} ${MAKE_ENV} ant dist
	cd ${WRKSRC}/j3d-core && ${SETENV} ${MAKE_ENV} ant \
		-Dbuild.type=fcs -Dis${OPSYS}=yes -Dports.localbase=${LOCALBASE} jar-opt

do-install:
	cd ${WRKSRC}/j3d-core && ${SETENV} ${MAKE_ENV} ant \
		-Dbuild.type=fcs -Dis${OPSYS}=yes docs-public
	${INSTALL_DATA} \
		${WRKSRC}/vecmath/dist/lib/ext/vecmath.jar \
		${WRKSRC}/j3d-core/build/default/opt/lib/ext/j3dcore.jar \
		${WRKSRC}/j3d-core/build/default/opt/lib/ext/j3dutils.jar \
		${DESTDIR}${PKG_JAVA_HOME}/jre/lib/ext
	${INSTALL_LIB} ${WRKSRC}/j3d-core/build/default/opt/native/libj3dcore-ogl.so \
		${DESTDIR}${PKG_JAVA_HOME}/jre/lib/${MACHINE_ARCH}
	cd ${DOCSSRC} && find . | cpio -pdvm ${DESTDIR}${LOCALBASE}/share/doc/java3d

LDFLAGS+=	-lGL
LDFLAGS+=	-L${PKG_JAVA_HOME}/lib/${MACHINE_ARCH} -ljawt
LDFLAGS+=	-L${PKG_JAVA_HOME}/jre/lib/${MACHINE_ARCH} -ljvm

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../devel/apache-ant/buildlink3.mk"
.include "../../mk/java-env.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"

.include "../Makefile"
