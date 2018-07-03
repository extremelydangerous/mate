$NetBSD$

--- glib/gbacktrace.h.orig	2018-01-08 20:00:42.000000000 +0000
+++ glib/gbacktrace.h
@@ -30,6 +30,9 @@
 #endif
 
 #include <glib/gtypes.h>
+#ifdef __sun__
+#include <sys/select.h>
+#endif
 #include <signal.h>
 
 G_BEGIN_DECLS
