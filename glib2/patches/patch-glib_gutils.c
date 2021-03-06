$NetBSD$

--- glib/gutils.c.orig	2018-01-08 20:00:42.000000000 +0000
+++ glib/gutils.c
@@ -2017,7 +2017,7 @@ g_get_system_data_dirs (void)
 
 #ifndef G_OS_WIN32
       if (!data_dirs || !data_dirs[0])
-          data_dirs = "/usr/local/share/:/usr/share/";
+          data_dirs = PREFIX "/share/";
 
       data_dir_vector = g_strsplit (data_dirs, G_SEARCHPATH_SEPARATOR_S, 0);
 #else
@@ -2093,7 +2093,7 @@ g_get_system_config_dirs (void)
 	}
 #else
       if (!conf_dirs || !conf_dirs[0])
-          conf_dirs = "/etc/xdg";
+          conf_dirs = PKG_SYSCONFDIR "/xdg";
 
       conf_dir_vector = g_strsplit (conf_dirs, G_SEARCHPATH_SEPARATOR_S, 0);
 #endif
