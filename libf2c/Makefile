# $NetBSD$

PKGNAME=	libf2c-20160102

DISTNAME=	libf2c
CATEGORIES?=		devel mate
MASTER_SITES=	http://www.netlib.org/f2c/
EXTRACT_SUFX=	.zip

MAINTAINER=	nervoso@k1.com.br
HOMEPAGE=	http://www.netlib.org/f2c/
COMMENT=	TODO: Short description of the package

EXTRACT_DIR=	${WRKDIR}/libf2c
WRKSRC=		${EXTRACT_DIR}

USE_BSD_MAKEFILE=	yes
USE_LIBTOOL=	yes
MAKE_FLAGS=	LIBF2CSRCDIR=. MKLTARCHIVE=yes

INSTALLATION_DIRS=	lib include

TEST_TARGET=	test

pre-extract:
	@cd ${WRKDIR} && ${MKDIR} ${EXTRACT_DIR}

post-extract:
	@${CP} ${FILESDIR:Q}/libf2c.mk ${WRKSRC}/Makefile
	@${CP} ${FILESDIR:Q}/ltlib.mk ${WRKSRC}/ltlib.mk
	@${CP} ${FILESDIR:Q}/bsd.init.mk ${WRKSRC}/bsd.init.mk	# pkgsrc lossage
	@${RM} -f ${WRKSRC}/ctype.h	# don't mess with system ctype.h
	@${CP} ${FILESDIR:Q}/chktypes.c ${WRKDIR}

do-test:
	@cd ${WRKDIR} && ${CC} -I libf2c -o chktypes chktypes.c
	${WRKDIR}/chktypes -v

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
BUILDLINK_TRANSFORM+=	rm:-Werror
.endif

# Notes
#
# Original distfile doesn't carry version information,
# This makes it difficult at best to use the real master site.
# We create our local the distfile:
#   ftp http://www.netlib.org/f2c/libf2c.zip
#   unzip -d tmp libf2c.zip
#   (cd tmp; ls | pax -zwf ../libf2c-yyyymmdd.tar.gz)
#
# Date corresponds to the last libf2c change from:
#   http://www.netlib.org/f2c/changes

.include "../../mk/bsd.pkg.mk"
