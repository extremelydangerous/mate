# $NetBSD: Makefile,v 1.36 2016/12/03 15:37:34 marino Exp $

.include "../../math/lapack/Makefile.common"

PKGNAME=	${DISTNAME:S/lapack/blas/}

COMMENT=	Basic Linear Algebra Subprograms (Fortran)

PATCHDIR=	${.CURDIR}/../../math/lapack/patches

BUILD_TARGET=	blaslib

CFLAGS+=	-fno-stack-protector

pre-configure:
	cd ${WRKSRC}/BLAS/SRC;${LIBTOOL} --mode=compile gcc -c dummy_stack_protector.c

do-install:
	${LIBTOOL} --mode=install ${INSTALL_DATA} ${WRKSRC}/BLAS/SRC/libblas.la \
		${DESTDIR}${PREFIX}/lib

.include "../../mk/bsd.pkg.mk"
