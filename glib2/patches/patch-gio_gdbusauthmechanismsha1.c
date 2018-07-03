$NetBSD$

--- gio/gdbusauthmechanismsha1.c.orig	2018-01-08 20:00:42.000000000 +0000
+++ gio/gdbusauthmechanismsha1.c
@@ -273,7 +273,7 @@ ensure_keyring_directory (GError **error
                            G_IO_ERROR_FAILED,
                            _("Permissions on directory “%s” are malformed. Expected mode 0700, got 0%o"),
                            path,
-                           statbuf.st_mode & 0777);
+                           (guint)statbuf.st_mode & 0777);
               g_free (path);
               path = NULL;
               goto out;
