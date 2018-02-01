# $NetBSD$

DISTNAME=	planner-0.14.6
CATEGORIES?=	time mate
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/planner/0.14/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://ftp.gnome.org/pub/GNOME/sources/planner/0.14/
COMMENT=	PERT tool for the gnome desktop

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool perl msgfmt

GCONF_SCHEMAS+=		data/planner.schemas
PKGCONFIG_OVERRIDE+=	libplanner-1.pc.in
#CONFIGURE_ARGS+=	--enable-eds-backend
CONFIGURE_ARGS+=	--enable-python-plugin

.include "../../mate/mate/Makefile.common"
.include "../../devel/GConf/schemas.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../devel/py-gobject-shared/buildlink3.mk"
.include "../../mate/gnome-vfs/buildlink3.mk"
.include "../../mate/glade/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
