$NetBSD$

--- gio/inotify/inotify-kernel.c.orig	2017-08-07 14:58:31.000000000 +0000
+++ gio/inotify/inotify-kernel.c
@@ -35,6 +35,9 @@
 #include "glib-private.h"
 
 /* From inotify(7) */
+#if !defined(NAME_MAX) && defined(_XOPEN_NAME_MAX)
+#define NAME_MAX             _XOPEN_NAME_MAX
+#endif
 #define MAX_EVENT_SIZE       (sizeof(struct inotify_event) + NAME_MAX + 1)
 
 /* Amount of time to sleep on receipt of uninteresting events */
