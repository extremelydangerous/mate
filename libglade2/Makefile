# $NetBSD$

DISTNAME=	libglade-2.6.4
CATEGORIES=	mate
MASTER_SITES=	https://ftp.acc.umu.se/pub/GNOME/sources/libglade/2.6/

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	https://ftp.acc.umu.se/pub/GNOME/sources/libglade/2.6/
COMMENT=	libglade version 2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	libglade-2.0.pc.in

.include	"../../x11/gtk2/buildlink3.mk"
.include	"../../textproc/libxml2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
