# $NetBSD$

DISTNAME=	seahorse-3.18.0
CATEGORIES=	mate
MASTER_SITES=	https://download.gnome.org/sources/seahorse/3.18/
EXTRACT_SUFX=	.tar.xz
DIST_SUBDIR=    gnome3

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.gnome.org/sources/seahorse/3.18/
COMMENT=	namange pgp keys

USE_TOOLS+=	aclocal autoheader autoconf automake gettext-m4 \
		gmake gm4 intltool msgfmt pkg-config

USE_LANGUAGES+=	c c++

pre-configure:
	set -e; cd ${WRKSRC}; \
	aclocal; autoheader; automake -a --foreign -i; autoconf

CFLAGS+=	-Wno-unused-but-set-variable
CFLAGS+=	-Wno-unused-variable
CFLAGS+=	-Wno-unused-function

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--enable-debug=no

DEPENDS+=	gnupg>0:../../security/gnupg2
DEPENDS+=	itstool>0:../../textproc/itstool

.include	"../../lang/vala/buildlink3.mk"
.include	"../../security/gpgme/buildlink3.mk"
.include	"../../security/libsecret/buildlink3.mk"
.include	"../../net/libsoup/buildlink3.mk"
.include	"../../mate/gcr/buildlink3.mk"
.include	"../../graphics/hicolor-icon-theme/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
