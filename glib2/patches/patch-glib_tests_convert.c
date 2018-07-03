$NetBSD$

--- glib/tests/convert.c.orig	2018-01-08 20:00:42.000000000 +0000
+++ glib/tests/convert.c
@@ -63,6 +63,7 @@ test_one_half (void)
   gsize bytes_written = 0;
   GError *error = NULL;  
 
+#if 0 /* these tests depend on GNU iconv specific behaviour */
   out = g_convert (in, -1, 
 		   "ISO-8859-1", "UTF-8",
 		   &bytes_read, &bytes_written,
@@ -97,6 +98,7 @@ test_one_half (void)
   g_assert_cmpint (bytes_written, ==, 1);
   g_assert_cmpstr (out, ==, "a");
   g_free (out);
+#endif
 }
 
 static void
