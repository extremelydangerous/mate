$NetBSD$

--- gio/glocalfileinfo.c.orig	2018-01-08 20:00:49.000000000 +0000
+++ gio/glocalfileinfo.c
@@ -1269,7 +1269,7 @@ get_content_type (const char          *b
 
       content_type = g_content_type_guess (basename, NULL, 0, &result_uncertain);
       
-#if !defined(G_OS_WIN32) && !defined(HAVE_COCOA)
+#if !defined(G_OS_WIN32)
       if (!fast && result_uncertain && path != NULL)
 	{
 	  guchar sniff_buffer[4096];
