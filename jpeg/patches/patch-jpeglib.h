$NetBSD$

--- jpeglib.h.orig	2017-04-25 11:52:22.000000000 +0000
+++ jpeglib.h
@@ -26,6 +26,7 @@
 #endif
 #include "jmorecfg.h"		/* seldom changed options */
 
+#include <stdio.h>
 
 #ifdef __cplusplus
 #ifndef DONT_USE_EXTERN_C
