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
# XXX	BUILDLINK_DEPMETHOD.pavucontrol?=	build

BUILDLINK_TREE+=	pavucontrol

.if !defined(PAVUCONTROL_BUILDLINK3_MK)
PAVUCONTROL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pavucontrol+=	pavucontrol>=3.0nb8
BUILDLINK_PKGSRCDIR.pavucontrol?=	../../mate/pavucontrol

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/glibmm/buildlink3.mk"
.include "../../x11/gtkmm3/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libsigc++/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif	# PAVUCONTROL_BUILDLINK3_MK

BUILDLINK_TREE+=	-pavucontrol
