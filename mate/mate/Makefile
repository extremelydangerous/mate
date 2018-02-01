# $NetBSD: Makefile,v 1.6 2017/06/27 16:17:09 jperkin Exp $

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	http://www.mate-desktop.org/
LICENSE=	gnu-gpl-v3

PKGNAME=	mate-${VERSION}
CATEGORIES?=	meta-pkgs mate

COMMENT=	Meta-package for MATE desktop environment

META_PACKAGE=	yes


.include	"../../mate/mate/Makefile.common"

.if 0
.include	"options.mk"
.include	"../../print/cups-base/buildlink3.mk"
.endif
.include	"../../mate/netbsd-extras/buildlink3.mk"
.include	"../../mate/gdm/buildlink3.mk"

DEPENDS+=	pkgdiff>0:../../pkgtools/pkgdiff
DEPENDS+=	createbuildlink>0:../../pkgtools/createbuildlink
DEPENDS+=	cscope>0:../../devel/cscope
DEPENDS+=	rsync>0:../../net/rsync
DEPENDS+=	atril>=${VERSION}:../../mate/atril
DEPENDS+=	caja>=${VERSION}:../../mate/caja
DEPENDS+=	caja-dropbox>=${VERSION}:../../mate/caja-dropbox
DEPENDS+=	caja-extensions>=${VERSION}:../../mate/caja-extensions
DEPENDS+=	engrampa>=${VERSION}:../../mate/engrampa
DEPENDS+=	eom>=${VERSION}:../../mate/eom
DEPENDS+=	libmatekbd>=${VERSION}:../../mate/libmatekbd
DEPENDS+=	libmateweather>=${VERSION}:../../mate/libmateweather
DEPENDS+=	marco>=${VERSION}:../../mate/marco
DEPENDS+=	mate-applets>=${VERSION}:../../mate/mate-applets
DEPENDS+=	mate-backgrounds>=${VERSION}:../../mate/mate-backgrounds
DEPENDS+=	mate-common>=${VERSION}:../../mate/mate-common
DEPENDS+=	mate-control-center>=${VERSION}:../../mate/mate-control-center
DEPENDS+=	mate-desktop>=${VERSION}:../../mate/mate-desktop
DEPENDS+=	mate-icon-theme>=${VERSION}:../../mate/mate-icon-theme
DEPENDS+=	mate-icon-theme-faenza>=${VERSION}:../../mate/mate-icon-theme-faenza
DEPENDS+=	mate-indicator-applet>=${VERSION}:../../mate/mate-indicator-applet
DEPENDS+=	mate-media>=${VERSION}:../../mate/mate-media
DEPENDS+=	mate-menus>=${VERSION}:../../mate/mate-menus
DEPENDS+=	mate-notification-daemon>=${VERSION}:../../mate/mate-notification-daemon
DEPENDS+=	mate-panel>=${VERSION}:../../mate/mate-panel
DEPENDS+=	mate-polkit>=${VERSION}:../../mate/mate-polkit
#DEPENDS+=	mate-netbook>=${VERSION}:../../mate/mate-netbook
#DEPENDS+=	mate-power-manager>=${VERSION}:../../mate/mate-power-manager
DEPENDS+=	mate-screensaver>=${VERSION}:../../mate/mate-screensaver
DEPENDS+=	mate-sensors-applet>=${VERSION}:../../mate/mate-sensors-applet
DEPENDS+=	mate-session-manager>=${VERSION}:../../mate/mate-session-manager
DEPENDS+=	mate-settings-daemon>=${VERSION}:../../mate/mate-settings-daemon
DEPENDS+=	mate-system-monitor>=${VERSION}:../../mate/mate-system-monitor
DEPENDS+=	mate-terminal>=${VERSION}:../../mate/mate-terminal
DEPENDS+=	mate-themes>=${VERSION}:../../mate/mate-themes
DEPENDS+=	mate-user-share>=${VERSION}:../../mate/mate-user-share
DEPENDS+=	mate-utils>=${VERSION}:../../mate/mate-utils
DEPENDS+=	mozo>=${VERSION}:../../mate/mozo
DEPENDS+=	pluma>=${VERSION}:../../mate/pluma

PLIST_SRC+=	PLIST


EGDIR=		${PREFIX}/share/examples

#.for R in printsearch runbatch
#CONF_FILES_PERMS+=${EGDIR}/rc.d/${R} /etc/rc.d/${R} \
#	${REAL_ROOT_USER} ${REAL_ROOT_GROUP} 0755
#.endfor

INSTALLATION_DIRS+=share/examples/mate 

CONF_FILES+=${EGDIR}/mate/21-mate-resolv /libexec/dhcpcd-hooks

pre-fetch:
	cp catalogs.mk ../../textproc/xmlcatmgr
	mkdir -p ${WRKSRC}

do-configure:
	@true

build-clean:
	@true

do-build:
	@true

post-install:
	echo POST INSTALL
	mkdir -p ${DESTDIR}${PREFIX} \
		${DESTDIR}${PREFIX}/etc/rc.d
	rsync --exclude CVS/ -avzHx --delete ${FILESDIR}/ ${DESTDIR}${PREFIX}

.include "../../mk/bsd.pkg.mk"

cvs:
	cvs up
	cvs commit

dorsync:
	cd ..;sh dorsyncpackages mate
