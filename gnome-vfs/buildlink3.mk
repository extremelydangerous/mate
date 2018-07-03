# $NetBSD: buildlink3.mk,v 1.55 2017/11/23 17:19:44 wiz Exp $

BUILDLINK_TREE+=	gnome-vfs

.if !defined(GNOME_VFS_BUILDLINK3_MK)
GNOME_VFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-vfs+=	gnome-vfs>=2.8.0
BUILDLINK_ABI_DEPENDS.gnome-vfs+=	gnome-vfs>=2.24.4nb32
BUILDLINK_PKGSRCDIR.gnome-vfs?=		../../sysutils/gnome-vfs

pkgbase := gnome-vfs
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gnome-vfs:Mavahi)
.  include "../../net/avahi/buildlink3.mk"
.endif

.include "../../mate/gnome-vfs/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../devel/pth/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../mate/gvfs/buildlink3.mk"
.include "../../mate/gnome-mount/buildlink3.mk"

.endif # GNOME_VFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-vfs
