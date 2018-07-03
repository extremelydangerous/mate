--- gnome-xcf-thumbnailer.c.orig	2008-05-01 16:45:12 UTC
+++ gnome-xcf-thumbnailer.c
@@ -29,6 +29,7 @@
 #undef main
 
 #include <string.h>
+#include <glib.h>
 #include <gio/gio.h>
 
 static int output_size = 64;
@@ -115,6 +116,8 @@ int main (int argc, char **argv)
 		png_destroy_write_struct(&libpng,&libpng2);
 	}
 	closeout(outfile,output);
+
+	system(g_strdup_printf("mogrify -thumbnail 256x256 %s",output));
 
 	return 0;
 }
