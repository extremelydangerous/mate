# $NetBSD: buildlink3.mk,v 1.55 2018/01/07 13:04:05 rillig Exp $

BUILDLINK_TREE+=	libbonoboui

.if !defined(LIBBONOBOUI_BUILDLINK3_MK)
LIBBONOBOUI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libbonoboui+=	libbonoboui>=2.8.0
BUILDLINK_ABI_DEPENDS.libbonoboui+=	libbonoboui>=2.24.4nb30
BUILDLINK_PKGSRCDIR.libbonoboui?=	../../devel/libbonoboui

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../mate/libgnome/buildlink3.mk"
.include "../../graphics/libgnomecanvas/buildlink3.mk"
.include "../../mate/gnome-vfs/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # LIBBONOBOUI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libbonoboui
