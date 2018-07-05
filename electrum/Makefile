# $NetBSD$

DISTNAME=	Electrum-3.2.2
CATEGORIES=	mate
MASTER_SITES=	https://download.electrum.org/3.2.2/

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.electrum.org/3.2.2/
COMMENT=	bitcoin electrum client
#LICENSE=	# TODO: (see mk/license.mk)

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		python
PYTHON_VERSION_REQD=	36

REPLACE_PYTHON+=	electrum
REPLACE_PYTHON+=	scripts/util.py
REPLACE_PYTHON+=	setup-release.py
REPLACE_PYTHON+=	setup.py

DEPENDS+=	py36-dns>0:../../net/py-dns
DEPENDS+=	py36-aes>0:../../security/py-aes
DEPENDS+=	py36-ecdsa>0:../../security/py-ecdsa
DEPENDS+=	py36-tlslite>0:../../security/py-tlslite
DEPENDS+=	py36-pbkdf2>0:../../security/py-pbkdf2
DEPENDS+=	py36-protobuf>0:../../devel/py-protobuf
DEPENDS+=	py36-requests>0:../../devel/py-requests
DEPENDS+=	py27-google-apputils>0:../../devel/py-google-apputils
DEPENDS+=	py27-jsonrpclib>0:../../textproc/py-jsonrpclib
DEPENDS+=	py36-qrcode>0:../../graphics/py-qrcode

.include	"../../x11/py-qt4/buildlink3.mk"
.include        "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include	"../../sysutils/desktop-file-utils/desktopdb.mk"
.include	"../../lang/python/distutils.mk"
.include	"../../lang/python/application.mk"
.include	"../../mk/bsd.pkg.mk"

makereplacepythonlist: do-extract
	(cd ${WRKSRC};find * -type f -name "*.py" | \
	awk '{printf "REPLACE_PYTHON+=\t%s\n",$$1}') > replacepythonlist

cvs:
	cvs up
	cvs commit
