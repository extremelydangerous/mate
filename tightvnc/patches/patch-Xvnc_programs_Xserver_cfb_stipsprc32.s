$NetBSD$

--- Xvnc/programs/Xserver/cfb/stipsprc32.s.orig	2002-03-20 05:16:03.000000000 +0000
+++ Xvnc/programs/Xserver/cfb/stipsprc32.s
@@ -81,7 +81,7 @@ in this Software without prior written a
 #define ForEachBits	LY4
 #define NextBits	LY5
 
-#if defined(SVR4) || ( defined(linux) && defined(__ELF__) )
+#if defined(SVR4) || defined(__ELF__)
 #ifdef TETEXT
 #define	_cfb32StippleStack	cfb32StippleStackTE
 #else