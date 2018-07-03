--- xcf2png.c.orig	2006-02-13 00:09:10 UTC
+++ xcf2png.c
@@ -71,9 +71,9 @@ init_output(void)
   
   outfile = openout(flatspec.output_filename);
   libpng = png_create_write_struct(PNG_LIBPNG_VER_STRING,
-                                   png_voidp_NULL,
+                                   NULL,
                                    my_error_callback,
-                                   png_error_ptr_NULL);
+                                   NULL);
   if( !libpng )
     FatalUnexpected(_("Couldn't initialize libpng library"));
   
