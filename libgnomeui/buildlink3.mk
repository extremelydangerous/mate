# $NetBSD: buildlink3.mk,v 1.65 2018/01/07 13:04:06 rillig Exp $

BUILDLINK_TREE+=	libgnomeui

.if !defined(LIBGNOMEUI_BUILDLINK3_MK)
LIBGNOMEUI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgnomeui+=	libgnomeui>=2.8.0
BUILDLINK_ABI_DEPENDS.libgnomeui+=	libgnomeui>=2.24.5nb36
BUILDLINK_PKGSRCDIR.libgnomeui?=	../../devel/libgnomeui

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mate/libbonoboui/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../mate/libgnome/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
#.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/libgnomecanvas/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.endif # LIBGNOMEUI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgnomeui
