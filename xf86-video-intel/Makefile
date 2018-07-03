# $NetBSD: Makefile,v 1.39 2016/12/07 21:59:54 wiz Exp $

PKGNAME=	xf86-video-intel-2018-05-12
DISTFILES=	
#DISTDIR=	${FILESDIR}
PKGREVISION=	1
CATEGORIES=	mate
MASTER_SITES=
WRKSRC=		${WRKDIR}/xf86-video-intel

#EXTRACT_SUFX=	.tar.gz

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://xorg.freedesktop.org/
COMMENT=	Modular Xorg Intel video driver

CONFLICTS+=	xf86-video-i810-[0-9]* xf86-video-intel-2*

INSTALLATION_DIRS+=	share/fonts/X11/cyrillic
INSTALLATION_DIRS+=	share/fonts/X11/Type1
INSTALLATION_DIRS+=	share/fonts/X11/TTF
INSTALLATION_DIRS+=	share/fonts/X11/OTF
INSTALLATION_DIRS+=	share/fonts/X11/75dpi
INSTALLATION_DIRS+=	share/fonts/X11/100dpi
INSTALLATION_DIRS+=	share/fonts/X11/misc
INSTALLATION_DIRS+=	lib/X11/fonts/cyrillic
INSTALLATION_DIRS+=	lib/X11/fonts/Type1
INSTALLATION_DIRS+=	lib/X11/fonts/TTF
INSTALLATION_DIRS+=	lib/X11/fonts/OTF
INSTALLATION_DIRS+=	lib/X11/fonts/75dpi
INSTALLATION_DIRS+=	lib/X11/fonts/100dpi
INSTALLATION_DIRS+=	lib/X11/fonts/misc

CONFIGURE_ARGS+=	--disable-silent-rules \
			--enable-kms-only \
			--enable-uxa \
			--enable-sna


GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES
USE_TOOLS+=	pkg-config autoconf automake autoreconf

CONFIGURE_ENV.SunOS+=	DRIVER_MAN_SUFFIX=4

BUILDLINK_API_DEPENDS.libdrm+=	libdrm>=2.4.7

do-extract:
	${MKDIR} ${WRKDIR};\
	cd ${WRKDIR};git clone git://anongit.freedesktop.org/git/xorg/driver/xf86-video-intel
	cd ${WRKSRC};rm -rf .git*

pre-configure:
	cd ${WRKSRC} && autoreconf -vif


BUILD_DEPENDS+=	git>0:../../devel/git

.include "../../x11/modular-xorg-server/buildlink3.mk"

.if ${X11_TYPE} == "modular"
CONFIGURE_ARGBS+=	--enable-dri
.endif

#.include "../../x11/xcb-util/buildlink3.mk"
.include "../../x11/libXvMC/buildlink3.mk"
.include "../../x11/libdrm/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../mk/x11.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
