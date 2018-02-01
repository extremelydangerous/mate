PKGNAME=	netbsd-extras-1.0
PKGREVISION=	1
CATEGORIES=	mate
MASTER_SITES=
DISTNAME=

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.k1.com.br/
COMMENT=	some utilities from FreeBSD

WRKSRC=		${WRKDIR}/${PKGNAME}

INSTALLATION_DIRS=	bin \
			man/man8 \
			man/man1 \
			etc/glade/wifimgr \
			etc/sudoers.d \
			share/examples/wifimgr \
			share/examples/netbsd-extras/etc

RCD_SCRIPTS=	runbatch

USE_LANGUAGES+=		python
USE_LANGUAGES+=		c

REPLACE_PYTHON+=        wifimgr *.py

.include	"../../mate/py-lztlib/buildlink3.mk"

DEPENDS+=	py27-sysctl:../../devel/py-sysctl
DEPENDS+=	sudo:../../security/sudo
DEPENDS+=	netcat:../../net/netcat
DEPENDS+=	rsync:../../net/rsync


do-extract:
	mkdir -p ${WRKSRC}
	cd ${FILESDIR};rsync --exclude CVS/ -avzHx --delete  src/ ${WRKSRC}

.include "../../mate/daemon/buildlink3.mk"
.include "../../print/cups-base/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
