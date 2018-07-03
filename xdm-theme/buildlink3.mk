# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.17.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.xdm-theme?=	build

BUILDLINK_TREE+=	xdm-theme

.if !defined(XDM_THEME_BUILDLINK3_MK)
XDM_THEME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xdm-theme+=	xdm-theme>=1.0
BUILDLINK_PKGSRCDIR.xdm-theme?=	../../x11/xdm-theme
.endif	# XDM_THEME_BUILDLINK3_MK

BUILDLINK_TREE+=	-xdm-theme
