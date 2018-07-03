# $NetBSD$

DISTNAME=	libcryptui-3.12.2
CATEGORIES=	mate
MASTER_SITES=	https://download.gnome.org/sources/libcryptui/3.12/
EXTRACT_SUFX=	.tar.xz
DIST_SUBDIR=	gnome3

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.gnome.org/sources/libcryptui/3.12/
COMMENT=	library to get pgp keys
#LICENSE=	# TODO: (see mk/license.mk)

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES+=	c++ c

USE_TOOLS+=	aclocal autoheader autoconf automake gettext-m4 \
		gmake gm4 intltool msgfmt pkg-config

CONFIGURE_ARGS+=	-enable-introspection=no

pre-configure:
	cd ${WRKSRC}; \
	aclocal; autoheader; automake -a --foreign -i; autoconf


PKGCONFIG_OVERRIDE+=	libcryptui/cryptui.pc.in

DEPENDS+=	gnupg2>0:../../security/gnupg2

.include	"../../mate/seahorse/buildlink3.mk"
.include	"../../security/libgnome-keyring/buildlink3.mk"
.include	"../../security/gpgme/buildlink3.mk"
.include	"../../sysutils/dbus-glib/buildlink3.mk"
.include	"../../sysutils/libnotify/buildlink3.mk"
.include	"../../devel/glib2/schemas.mk"
.include	"../../x11/gtk3/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
