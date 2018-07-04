# $NetBSD: options.mk,v 1.6 2015/07/23 20:54:54 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mate
PKG_SUPPORTED_OPTIONS=	extras
PKG_SUGGESTED_OPTIONS=	extras

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		extras

.if !empty(PKG_OPTIONS:Mextras)

DEPENDS+=	mpv:../../multimedia/mpv
DEPENDS+=	userppp:../../mate/userppp
DEPENDS+=	devhelp:../../devel/devhelp
DEPENDS+=	sound-theme-freedesktop*:../../audio/sound-theme-freedesktop
DEPENDS+=	dwatch:../../mate/dwatch
DEPENDS+=	oneko:../../x11/oneko
DEPENDS+=	xv:../../graphics/xv
DEPENDS+=	mpv:../../multimedia/mpv
#DEPENDS+=	gstreamer0.10-plugins:../../meta-pkgs/gstreamer0.10-plugins
#DEPENDS+=	avidemux:../../multimedia/avidemux
DEPENDS+=	youtube-dl:../../net/youtube-dl
DEPENDS+=	transmission:../../net/transmission
DEPENDS+=	transmission-gtk:../../net/transmission-gtk
DEPENDS+=	glade:../../devel/glade
DEPENDS+=	netcat:../../net/netcat
DEPENDS+=	cscope:../../devel/cscope
#DEPENDS+=	midori:../../www/midori
#DEPENDS+=	dhcpcd-gtk:../../net/dhcpcd-gtk
DEPENDS+=	netbsd-extras:../../mate/netbsd-extras
DEPENDS+=	xmeltdown:../../mate/xmeltdown
DEPENDS+=	xdm-theme:../../mate/xdm-theme
DEPENDS+=	trafshow:../../mate/trafshow3
DEPENDS+=	yad:../../mate/yad
#DEPENDS+=	Electrum:../../lzt/electrum
#DEPENDS+=	RetroShare:../../lzt/retroshare
#DEPENDS+=	timidity:../../audio/timidity
DEPENDS+=	aumix-gtk:../../audio/aumix-gtk
DEPENDS+=	inkscape:../../graphics/inkscape
DEPENDS+=	gimp:../../graphics/gimp
DEPENDS+=	gnucash:../../finance/gnucash
DEPENDS+=	dia-python:../../graphics/dia-python
DEPENDS+=	DVDStyler:../../multimedia/dvdstyler
DEPENDS+=	pidgin-facebookchat:../../chat/pidgin-facebookchat
DEPENDS+=	gnome-keyring-manager>0:../../security/gnome-keyring-manager
DEPENDS+=	evolution:../../mate/evolution
DEPENDS+=	tsclient:../../mate/tsclient
DEPENDS+=	geda:../../mate/geda
DEPENDS+=	pcb:../../mate/pcb
DEPENDS+=	aumix-gtk:../../audio/aumix-gtk
DEPENDS+=	rhythmbox:../../audio/rhythmbox
#DEPENDS+=	abiword:../../editors/abiword
DEPENDS+=	libgsf>0:../../devel/libgsf
.if !empty(MACHINE_ARCH:Mi386*)
.include	"../../mate/firefox52-l10n/buildlink3.mk"
.include	"../../mate/audacity/buildlink3.mk"
.include	"../../mate/libreoffice6.0.4/buildlink3.mk"
.endif
PLIST.extras=	yes
.endif
