# $NetBSD: options.mk,v 1.6 2016/08/06 15:56:50 richard Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.pulseaudio
PKG_SUPPORTED_OPTIONS=	fftw x11 jack system
PKG_SUGGESTED_OPTIONS=	x11 system fftw
PLIST_VARS+=		${PKG_SUPPORTED_OPTIONS}

.include "../../mk/bsd.options.mk"

###
### fftw
###
.if !empty(PKG_OPTIONS:Mfftw)
CONFIGURE_ARGS+=	--with-fftw
PLIST.fftw=		yes

.include "../../lang/python/pyversion.mk"
# manually replace since check_interpreter detests /usr/bin/env
REPLACE_INTERPRETER+=	pulse_py
REPLACE.pulse_py.old=	.*/usr/bin/env python[^ ]*
REPLACE.pulse_py.new=	${PYTHONBIN}
REPLACE_FILES.pulse_py=	src/utils/qpaeq

.include "../../math/fftwf/buildlink3.mk"
.include "../../sysutils/py-dbus/buildlink3.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../x11/py-sip/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-fftw
.endif

###
### jack
###
.if !empty(PKG_OPTIONS:Mjack)
.include "../../audio/jack/buildlink3.mk"
PLIST_SRC+=	PLIST PLIST.jack
.endif
###
### X11
###
.if !empty(PKG_OPTIONS:Mx11)
PLIST.x11=		yes
.else
CONFIGURE_ARGS+=	--disable-x11
.endif


.if !empty(PKG_OPTIONS:Msystem)
RCD_SCRIPTS=	pulseaudio
FILES_SUBST+=  PULSEAUDIO_SYSTEM="true"
post-install:
	${CP}	files/conf/*.pa files/conf/*.conf ${DESTDIR}${EGDIR}
	${RM}	-f \
		${DESTDIR}${LOCALBASE}/man/man1/pax11publish.1 \
		${DESTDIR}${LOCALBASE}/man/man1/start-pulseaudio-x11.1
	echo INSTALLING PULSEAUDIO as SYSTEM
.else
FILES_SUBST+=  PULSEAUDIO_SYSTEM="false"
CONF_FILES+=	${EGDIR}/pulseaudio.desktop ${PKG_SYSCONFBASE}/xdg/autostart/pulseaudio.desktop
.endif

CONFIGURE_ARGS+=	--disable-avahi
