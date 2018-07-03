$NetBSD$

--- intl/hyphenation/glue/hnjalloc.h.orig	2017-06-15 20:52:38.000000000 +0000
+++ intl/hyphenation/glue/hnjalloc.h
@@ -24,6 +24,9 @@
  */
 
 #include <stdio.h> /* ensure stdio.h is loaded before our macros */
+#ifdef __sun
+#include <wchar.h>
+#endif
 
 #undef FILE
 #define FILE hnjFile
