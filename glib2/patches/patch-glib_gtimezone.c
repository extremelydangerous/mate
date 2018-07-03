$NetBSD$

--- glib/gtimezone.c.orig	2017-07-13 23:03:39.000000000 +0000
+++ glib/gtimezone.c
@@ -1536,7 +1536,11 @@ interval_end (GTimeZone *tz,
               guint      interval)
 {
   if (tz->transitions && interval < tz->transitions->len)
+  {
+    if ((TRANSITION(interval)).time == G_MININT64)
+      return G_MININT64;
     return (TRANSITION(interval)).time - 1;
+  }
   return G_MAXINT64;
 }
 
