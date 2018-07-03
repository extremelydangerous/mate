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
# XXX	BUILDLINK_DEPMETHOD.firefox52-l10n?=	build

BUILDLINK_TREE+=	firefox52-l10n

.if !defined(FIREFOX52_L10N_BUILDLINK3_MK)
FIREFOX52_L10N_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.firefox52-l10n+=	firefox52-l10n>=52.9.0
BUILDLINK_PKGSRCDIR.firefox52-l10n?=	../../mate/firefox52-l10n
.endif	# FIREFOX52_L10N_BUILDLINK3_MK

BUILDLINK_TREE+=	-firefox52-l10n
