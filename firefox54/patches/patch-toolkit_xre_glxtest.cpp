$NetBSD$

--- toolkit/xre/glxtest.cpp.orig	2017-06-15 20:52:35.000000000 +0000
+++ toolkit/xre/glxtest.cpp
@@ -163,7 +163,7 @@ void glxtest()
     fatal_error("The MOZ_AVOID_OPENGL_ALTOGETHER environment variable is defined");
 
   ///// Open libGL and load needed symbols /////
-#ifdef __OpenBSD__
+#if defined(__OpenBSD__) || defined(__NetBSD__)
   #define LIBGL_FILENAME "libGL.so"
 #else
   #define LIBGL_FILENAME "libGL.so.1"
