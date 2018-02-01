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
# XXX	BUILDLINK_DEPMETHOD.nautilus-sendto?=	build

BUILDLINK_TREE+=	nautilus-sendto

.if !defined(NAUTILUS_SENDTO_BUILDLINK3_MK)
NAUTILUS_SENDTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nautilus-sendto+=	nautilus-sendto>=2.32.0nb47
BUILDLINK_PKGSRCDIR.nautilus-sendto?=	../../mate/nautilus-sendto

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../chat/pidgin/buildlink3.mk"
.include "../../mate/evolution-data-server/buildlink3.mk"
.include "../../mate/evolution/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../mate/nautilus/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif	# NAUTILUS_SENDTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-nautilus-sendto
