$NetBSD$

--- glib/gcharset.c.orig	2017-07-13 23:03:39.000000000 +0000
+++ glib/gcharset.c
@@ -293,7 +293,7 @@ unalias_lang (char *lang)
   if (g_once_init_enter (&alias_table))
     {
       GHashTable *table = g_hash_table_new (g_str_hash, g_str_equal);
-      read_aliases ("/usr/share/locale/locale.alias", table);
+      read_aliases (PREFIX "/" PKGLOCALEDIR "/locale/locale.alias", table);
       g_once_init_leave (&alias_table, table);
     }
 
