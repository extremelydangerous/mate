$NetBSD$

--- daemon/gvfsbackendcdda.c.orig	2011-03-21 15:42:18.000000000 +0000
+++ daemon/gvfsbackendcdda.c
@@ -55,7 +55,7 @@
 #include "gvfsjobenumerate.h"
 
 #define DO_NOT_WANT_PARANOIA_COMPATIBILITY
-#include <cdio/paranoia.h>
+#include <cdio/paranoia/paranoia.h>
 #include <cdio/cdio.h>
 
 /* TODO:
@@ -169,11 +169,11 @@ fetch_metadata (GVfsBackendCdda *cdda_ba
   if (!cdio)
     return;
 
-  cdtext = cdio_get_cdtext(cdio, 0);
+  cdtext = cdio_get_cdtext(cdio);
   if (cdtext) {
-    cdda_backend->album_title = g_strdup (cdtext_get (CDTEXT_TITLE, cdtext));
-    cdda_backend->album_artist = g_strdup (cdtext_get (CDTEXT_PERFORMER, cdtext));
-    cdda_backend->genre = g_strdup (cdtext_get (CDTEXT_GENRE, cdtext));
+    cdda_backend->album_title = g_strdup (cdtext_get (cdtext, CDTEXT_FIELD_TITLE, 0));
+    cdda_backend->album_artist = g_strdup (cdtext_get (cdtext, CDTEXT_FIELD_PERFORMER, 0));
+    cdda_backend->genre = g_strdup (cdtext_get (cdtext, CDTEXT_FIELD_GENRE, 0));
   }
 
   cdtrack = cdio_get_first_track_num(cdio);
@@ -182,10 +182,10 @@ fetch_metadata (GVfsBackendCdda *cdda_ba
   for ( ; cdtrack < last_cdtrack; cdtrack++ ) {
     GVfsBackendCddaTrack *track;
     track = g_new0 (GVfsBackendCddaTrack, 1);
-    cdtext = cdio_get_cdtext(cdio, cdtrack);
+    cdtext = cdio_get_cdtext(cdio);
     if (cdtext) {
-      track->title = g_strdup (cdtext_get (CDTEXT_TITLE, cdtext));
-      track->artist = g_strdup (cdtext_get (CDTEXT_PERFORMER, cdtext));
+      track->title = g_strdup (cdtext_get (cdtext, CDTEXT_FIELD_TITLE, cdtrack));
+      track->artist = g_strdup (cdtext_get (cdtext, CDTEXT_FIELD_PERFORMER, cdtrack));
     }
     track->duration = cdio_get_track_sec_count (cdio, cdtrack) / CDIO_CD_FRAMES_PER_SEC;
 
@@ -226,7 +226,11 @@ find_udi_for_device (GVfsBackendCdda *cd
   cdda_backend->hal_udi = NULL;
 
   devices = libhal_manager_find_device_string_match (cdda_backend->hal_ctx,
+#ifdef __NetBSD__
+						     "block.netbsd.raw_device",
+#else
                                                      "block.device",
+#endif
                                                      cdda_backend->device_path,
                                                      &num_devices,
                                                      NULL);
