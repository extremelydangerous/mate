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
# XXX	BUILDLINK_DEPMETHOD.pavumeter?=	build

BUILDLINK_TREE+=	pavumeter

.if !defined(PAVUMETER_BUILDLINK3_MK)
PAVUMETER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pavumeter+=	pavumeter>=0.9.3nb43
BUILDLINK_PKGSRCDIR.pavumeter?=	../../audio/pavumeter

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../mate/pulseaudio/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gconfmm/buildlink3.mk"
.include "../../devel/libglademm/buildlink3.mk"
.include "../../devel/libsigc++/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtkmm/buildlink3.mk"
.endif	# PAVUMETER_BUILDLINK3_MK

BUILDLINK_TREE+=	-pavumeter
