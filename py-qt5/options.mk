# $NetBSD: options.mk,v 1.6 2015/07/23 20:54:54 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.py-qt5
PKG_SUPPORTED_OPTIONS=	opengl
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		opengl

.if empty(PKG_OPTIONS:Mopengl)
.endif
