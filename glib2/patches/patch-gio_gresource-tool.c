$NetBSD$

--- gio/gresource-tool.c.orig	2017-07-13 23:03:39.000000000 +0000
+++ gio/gresource-tool.c
@@ -29,6 +29,11 @@
 #include <locale.h>
 
 #ifdef HAVE_LIBELF
+/* Solaris native libelf does not support largefile in 32-bit mode */
+#  if defined(__sun) && defined(__i386)
+#    undef  _FILE_OFFSET_BITS
+#    define _FILE_OFFSET_BITS   32
+#  endif
 #include <libelf.h>
 #include <gelf.h>
 #include <sys/mman.h>
