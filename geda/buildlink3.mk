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
# XXX	BUILDLINK_DEPMETHOD.geda?=	build

BUILDLINK_TREE+=	geda

.if !defined(GEDA_BUILDLINK3_MK)
GEDA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.geda+=	geda>=1.9.2nb15
BUILDLINK_PKGSRCDIR.geda?=	../../mate/geda

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libgetopt/buildlink3.mk"
.include "../../devel/libstroke/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../lang/guile20/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif	# GEDA_BUILDLINK3_MK

BUILDLINK_TREE+=	-geda
