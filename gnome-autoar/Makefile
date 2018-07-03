# $NetBSD$

DISTNAME=	gnome-autoar-0.2.2
CATEGORIES=	mate
MASTER_SITES=	https://download.gnome.org/sources/gnome-autoar/0.2/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://download.gnome.org/sources/gnome-autoar/0.2/
COMMENT=	gnome libarchive

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool msgfmt \
		aclocal autoheader autoconf automake gettext-m4 

PKGCONFIG_OVERRIDE+=	gnome-autoar/gnome-autoar-gtk.pc.in
PKGCONFIG_OVERRIDE+=	gnome-autoar/gnome-autoar.pc.in

pre-configure:
	set -e; cd ${WRKSRC}; \
	aclocal; autoheader; automake -a --foreign -i; autoconf

.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
