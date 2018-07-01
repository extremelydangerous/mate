# $NetBSD: Makefile,v 1.3 2013/04/06 11:41:35 wiz Exp $
#

DISTNAME=	pulseaudio-tools-1.0
CATEGORIES?=		meta-pkgs mate
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.pulseaudio.org/
COMMENT=	Management tools for PulseAudio

META_PACKAGE=	yes

.include	"../../mate/paman/buildlink3.mk"
.include	"../../mate/paprefs/buildlink3.mk"
.include	"../../mate/pavucontrol/buildlink3.mk"
.include	"../../mate/pavumeter/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
