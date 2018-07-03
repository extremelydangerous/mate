$NetBSD$

--- Xvnc/programs/Xserver/cfb/cfbrrop.h.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/programs/Xserver/cfb/cfbrrop.h
@@ -275,6 +275,7 @@ in this Software without prior written a
 #define RROP_UNROLL_CASE15(p)	RROP_UNROLL_CASE8(p,8) RROP_UNROLL_CASE7(p)
 #define RROP_UNROLL_CASE31(p)	RROP_UNROLL_CASE16(p,16) RROP_UNROLL_CASE15(p)
 #ifdef LONG64
+#define RROP_UNROLL_CASE32(p,i)   RROP_UNROLL_CASE16(p,(i)+16) RROP_UNROLL_CASE16(p,i)
 #define RROP_UNROLL_CASE63(p)	RROP_UNROLL_CASE32(p,32) RROP_UNROLL_CASE31(p)
 #endif /* LONG64 */
 
