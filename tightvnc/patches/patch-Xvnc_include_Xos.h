$NetBSD$

--- Xvnc/include/Xos.h.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/include/Xos.h
@@ -151,7 +151,9 @@ extern int sys_nerr;
 #endif /* X_NOT_POSIX else */
 
 #ifdef CSRG_BASED
+#ifndef __FreeBSD__
 #include <stdlib.h>
+#endif
 #include <unistd.h>
 #endif /* CSRG_BASED */
 
