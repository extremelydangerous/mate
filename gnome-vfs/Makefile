 $NetBSD: Makefile,v 1.114 2017/11/23 17:19:44 wiz Exp $

PKGREVISION=		32

PKGCONFIG_OVERRIDE=	gnome-vfs-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gnome-vfs-module-2.0.pc.in

OWN_DIRS=		${PKG_SYSCONFDIR}/modules

EGFILES+=		modules/default-modules.conf
EGFILES+=		modules/ssl-modules.conf

GCONF_SCHEMAS=		desktop_default_applications.schemas
GCONF_SCHEMAS+=	desktop_gnome_url_handlers.schemas
GCONF_SCHEMAS+=	system_dns_sd.schemas
GCONF_SCHEMAS+=	system_http_proxy.schemas
GCONF_SCHEMAS+=	system_smb.schemas

LDFLAGS.Darwin+=	-lresolv

USE_TOOLS+=		automake autoreconf

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.9.3

MAKE_JOBS_SAFE=		no

.include "Makefile.common"
.include "options.mk"

DEPENDS+=	gnome-common>0:../../devel/gnome-common
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../databases/gnome-mime-data/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"

#	${PKGSRC_SETENV} NOCONFIGURE=yes  ./autogen.sh

pre-configure:
	cd ${WRKSRC}&& \
	rm -f configure && \
	${PKGSRC_SETENV} autoreconf -fiv

CONFLICTS+=		gnome-vfs2-[0-9]*
CONFLICTS+=		gnome-vfs-dns-sd-[0-9]*

.include "../../mk/bsd.pkg.mk"
