$NetBSD$

--- Xvnc/programs/Xserver/include/misc.h.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/programs/Xserver/include/misc.h
@@ -83,6 +83,10 @@ extern unsigned long serverGeneration;
 #include <X11/Xmd.h>
 #include <X11/X.h>
 
+#ifdef __NetBSD__
+#include <stdlib.h>
+#endif
+
 #ifndef NULL
 #ifndef X_NOT_STDC_ENV
 #include <stddef.h>
@@ -159,7 +163,7 @@ typedef struct _xReq *xReqPtr;
 #define min(a, b) (((a) < (b)) ? (a) : (b))
 #define max(a, b) (((a) > (b)) ? (a) : (b))
 #if !defined(AMOEBA) && !defined(__EMX__)
-#ifndef abs
+#if !defined(abs)
 #define abs(a) ((a) > 0 ? (a) : -(a))
 #endif
 #else /* AMOEBA || __EMX__ */
