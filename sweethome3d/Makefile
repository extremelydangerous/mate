# $NetBSD$

DISTNAME=	SweetHome3D-5.7
CATEGORIES=	mate java
MASTER_SITES=	https://ufpr.dl.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-5.7/
EXTRACT_SUFX=	.jar
NO_BUILD=	yes

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://ufpr.dl.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-5.7/
COMMENT=	3d cad for home 

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
USE_JAVA=	run
USE_JAVA2=	yes

INSTALLATION_DIRS+=	bin \
			lib/java \
			share/applications \
			share/icons/hicolor/128x128/apps

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/sweethome3d.sh \
		${DESTDIR}${PREFIX}/bin/sweethome3d
	${INSTALL_DATA} ${FILESDIR}/sweethome3d.png \
		${DESTDIR}${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${FILESDIR}/sweethome3d.desktop \
		${DESTDIR}${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME}.jar \
		${DESTDIR}${PREFIX}/lib/java/${DISTNAME}.jar

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mate/java3d/buildlink3.mk"
.include "../../mk/java-env.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"

.include "../Makefile"
