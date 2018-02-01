# $NetBSD: options.mk,v 1.6 2015/07/23 20:54:54 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mate
PKG_SUPPORTED_OPTIONS=	extras
PKG_SUGGESTED_OPTIONS=	extras

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		extras

.if !empty(PKG_OPTIONS:Mextras)
.include	"../../meta-pkgs/modular-xorg-fonts/buildlink3.mk"
.if ${X11_TYPE} == "modular"
DEPENDS+=	modular-xorg:../../meta-pkgs/modular-xorg
.endif
.include	"../../mate/pulseaudio-tools/buildlink3.mk"
.include	"../../multimedia/mpv/buildlink3.mk"

DEPENDS+=	userppp:../../lzt/userppp
DEPENDS+=	sound-theme-freedesktop*:../../audio/sound-theme-freedesktop
DEPENDS+=	sox>0:../../audio/sox
DEPENDS+=	libxklavier>0:../../lzt/libxklavier
DEPENDS+=	dwatch:../../lzt/dwatch
DEPENDS+=	oneko:../../x11/oneko
DEPENDS+=	caja-thumbnailers:../../lzt/caja-thumbnailers
DEPENDS+=	xv:../../graphics/xv
DEPENDS+=	mpv:../../multimedia/mpv
DEPENDS+=	gstreamer0.10-plugins:../../meta-pkgs/gstreamer0.10-plugins
DEPENDS+=	totem:../../multimedia/totem
#DEPENDS+=	avidemux:../../multimedia/avidemux
DEPENDS+=	youtube-dl:../../net/youtube-dl
DEPENDS+=	transmission:../../net/transmission
DEPENDS+=	transmission-gtk:../../net/transmission-gtk
DEPENDS+=	glade:../../devel/glade
DEPENDS+=	netcat:../../net/netcat
DEPENDS+=	cscope:../../devel/cscope
#DEPENDS+=	midori:../../www/midori
#DEPENDS+=	dhcpcd-gtk:../../net/dhcpcd-gtk
DEPENDS+=	netbsd-extras:../../lzt/netbsd-extras
DEPENDS+=	glade3:../../lzt/glade3
DEPENDS+=	xmeltdown:../../lzt/xmeltdown
DEPENDS+=	xdm-theme-lzt:../../lzt/xdm-theme-lzt
DEPENDS+=	gdm:../../lzt/gdm18
DEPENDS+=	trafshow:../../lzt/trafshow3
DEPENDS+=	yad:../../lzt/yad
DEPENDS+=	Electrum:../../lzt/electrum
DEPENDS+=	RetroShare:../../lzt/retroshare
DEPENDS+=	timidity:../../audio/timidity
DEPENDS+=	aumix-gtk:../../audio/aumix-gtk
DEPENDS+=	inkscape:../../graphics/inkscape
DEPENDS+=	gimp:../../graphics/gimp
DEPENDS+=	gnucash:../../finance/gnucash
DEPENDS+=	dia-python:../../graphics/dia-python
DEPENDS+=	DVDStyler:../../multimedia/dvdstyler
DEPENDS+=	pidgin-facebookchat:../../chat/pidgin-facebookchat
DEPENDS+=	rdesktop:../../net/rdesktop
DEPENDS+=	tightvnc:../../net/tightvnc
DEPENDS+=	tightvncviewer:../../net/tightvncviewer
DEPENDS+=	evolution:../../mail/evolution
DEPENDS+=	thunderbird:../../mail/thunderbird
DEPENDS+=	tsclient:../../lzt/tsclient
DEPENDS+=	geda:../../lzt/geda
DEPENDS+=	pcb:../../lzt/pcb
DEPENDS+=	aumix-gtk:../../audio/aumix-gtk
DEPENDS+=	rhythmbox:../../audio/rhythmbox
DEPENDS+=	abiword:../../editors/abiword
DEPENDS+=	libreoffice:../../misc/libreoffice
.if !empty(MACHINE_ARCH:Mi386*)
DEPENDS+=	firefox-l10n>0:../../lzt/firefox-l10n
DEPENDS+=	firefox>0:../../lzt/firefox
.include	"../../lzt/audacity/buildlink3.mk"
DEPENDS+=	libreoffice:../../misc/libreoffice
.endif
.if !empty(MACHINE_ARCH:Mearm*)
DEPENDS+=	firefox-l10n>0:../../lzt/firefox-l10n
DEPENDS+=	firefox>0:../../lzt/firefox
.endif
PLIST.extras=	yes
.endif
