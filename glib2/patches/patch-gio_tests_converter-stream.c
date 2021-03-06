$NetBSD$

--- gio/tests/converter-stream.c.orig	2016-10-22 05:18:11.000000000 +0000
+++ gio/tests/converter-stream.c
@@ -1204,7 +1204,9 @@ main (int   argc,
   CharsetTest charset_tests[] = {
     { "/converter-input-stream/charset/utf8->latin1", "UTF-8", "\303\205rr Sant\303\251", "ISO-8859-1", "\305rr Sant\351", 0 },
     { "/converter-input-stream/charset/latin1->utf8", "ISO-8859-1", "\305rr Sant\351", "UTF-8", "\303\205rr Sant\303\251", 0 },
+#if 0 /* this depends on GNU iconv specific behaviour */
     { "/converter-input-stream/charset/fallbacks", "UTF-8", "Some characters just don't fit into latin1: πא", "ISO-8859-1", "Some characters just don't fit into latin1: \\CF\\80\\D7\\90", 4 },
+#endif
   };
 
   gint i;
