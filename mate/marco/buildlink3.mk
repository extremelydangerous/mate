# $NetBSD: buildlink3.mk,v 1.6 2017/11/23 17:19:44 wiz Exp $
#

BUILDLINK_TREE+=	marco

.if !defined(MARCO_BUILDLINK3_MK)
MARCO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.marco+=	marco>=1.8.2
BUILDLINK_ABI_DEPENDS.marco+=	marco>=1.18.1nb1
BUILDLINK_PKGSRCDIR.marco?=	../../mate/marco

.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXfixes/buildlink3.mk"
.include "../../x11/libXdamage/buildlink3.mk"
.endif	# MARCO_BUILDLINK3_MK

BUILDLINK_TREE+=	-marco
