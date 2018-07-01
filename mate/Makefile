# $NetBSD: Makefile,v 1.6 2017/06/27 16:17:09 jperkin Exp $

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	http://www.mate-desktop.org/
LICENSE=	gnu-gpl-v3

PKGNAME=	mate-${VERSION}
CATEGORIES?=		meta-pkgs mate

COMMENT=	Meta-package for MATE desktop environment

RCD_SCRIPTS+=	fixhostname

.include	"../../mate/mate/Makefile.common"

.include	"../../mate/tightvncviewer/buildlink3.mk"
.include	"../../mate/gdm/buildlink3.mk"
.include	"../../mate/caja-thumbnailers/buildlink3.mk"
.include	"../../mate/gnome-xcf-thumbnailer/buildlink3.mk"
.include	"../../mate/tsclient/buildlink3.mk"
.include	"../../meta-pkgs/pulseaudio-tools/buildlink3.mk"
.include	"../../audio/sox/buildlink3.mk"

DEPENDS+=	liberation-ttf>0:../../fonts/liberation-ttf
DEPENDS+=	pkg_tarup>0:../../pkgtools/pkg_tarup
DEPENDS+=	cscope>0:../../devel/cscope
DEPENDS+=	pkgdiff>0:../../pkgtools/pkgdiff
DEPENDS+=	createbuildlink>0:../../pkgtools/createbuildlink
DEPENDS+=	rsync>0:../../net/rsync
DEPENDS+=	atril>=${VERSION}:../../mate/atril
DEPENDS+=	caja>=${VERSION}:../../mate/caja
#DEPENDS+=	caja-dropbox>=${VERSION}:../../mate/caja-dropbox
DEPENDS+=	caja-extensions>=${VERSION}:../../mate/caja-extensions
DEPENDS+=	python-caja>=${VERSION}:../../mate/python-caja
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
DEPENDS+=	mate-indicator-applet>=1.18.0:../../mate/mate-indicator-applet
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
DEPENDS+=	mate-calc>=${VERSION}:../../mate/mate-calc
DEPENDS+=	mate-themes>=${VERSION}:../../mate/mate-themes
DEPENDS+=	mate-user-share>=${VERSION}:../../mate/mate-user-share
DEPENDS+=	mate-utils>=${VERSION}:../../mate/mate-utils
DEPENDS+=	mozo>=${VERSION}:../../mate/mozo
DEPENDS+=	pluma>=${VERSION}:../../mate/pluma
DEPENDS+=	totem:../../multimedia/totem

DHCPCDHOOK=	21-mate-resolv
DHCPCDHOOKLOC=	${FILESDIR}/share/examples/mate/${DHCPCDHOOK}

.include	"options.mk"

PLIST_SRC+=	PLIST

EGDIR=		${PREFIX}/share/examples

INSTALLATION_DIRS+=share/examples/mate 
INSTALLATION_DIRS+=share/examples/rc.d

CONF_FILES+=${EGDIR}/mate/21-mate-resolv /libexec/dhcpcd-hooks

pre-fetch:
	cp catalogs.mk ../../textproc/xmlcatmgr
	mkdir -p ${WRKSRC}

do-configure:
	@echo CONFIGURE DONE	

do-extract:
	@echo EXTRACT
	rsync --exclude CVS/ -avzHx --delete ${FILESDIR}/ ${WRKSRC}

.include "../../mk/bsd.pkg.mk"

dhcpcdhook:/libexec/dhcpcd-hooks/${DHCPCDHOOK}
	@true

/libexec/dhcpcd-hooks/${DHCPCDHOOK}: ${DHCPCDHOOKLOC}
	cp $> $@

dorsync:
	cd ..;sh dorsyncpackages mate

.include "../Makefile"
