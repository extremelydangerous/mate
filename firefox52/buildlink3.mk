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
# XXX	BUILDLINK_DEPMETHOD.firefox52?=	build

BUILDLINK_TREE+=	firefox52

.if !defined(FIREFOX52_BUILDLINK3_MK)
FIREFOX52_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.firefox52+=	firefox52>=52.9.0
BUILDLINK_PKGSRCDIR.firefox52?=	../../mate/firefox52
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/nspr/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../multimedia/libvpx/buildlink3.mk"
.include "../../net/libIDL/buildlink3.mk"
.include "../../textproc/hunspell/buildlink3.mk"
.include "../../multimedia/ffmpeg3/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.endif	# FIREFOX52_BUILDLINK3_MK

BUILDLINK_TREE+=	-firefox52
