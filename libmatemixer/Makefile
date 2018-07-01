# $NetBSD: Makefile,v 1.2 2016/08/03 10:22:30 adam Exp $

PKGREVISION= 1
.include "../../mate/mate/Makefile.common"

DISTNAME=	libmatemixer-${VERSION}
CATEGORIES?=		audio mate

COMMENT=	MATE audio mixer

CONFIGURE_ARGS+=	--disable-null \
			--enable-oss \
			--disable-alsa \
			--enable-pulseaudio \

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mate/pulseaudio/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

.include "../Makefile"
