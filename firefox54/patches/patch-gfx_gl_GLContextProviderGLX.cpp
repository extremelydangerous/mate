$NetBSD$

--- gfx/gl/GLContextProviderGLX.cpp.orig	2017-06-15 20:52:35.000000000 +0000
+++ gfx/gl/GLContextProviderGLX.cpp
@@ -88,7 +88,7 @@ GLXLibrary::EnsureInitialized()
         // see e.g. bug 608526: it is intrinsically interesting to know whether we have dynamically linked to libGL.so.1
         // because at least the NVIDIA implementation requires an executable stack, which causes mprotect calls,
         // which trigger glibc bug http://sourceware.org/bugzilla/show_bug.cgi?id=12225
-#ifdef __OpenBSD__
+#if defined(__OpenBSD__) || defined(__NetBSD__)
         libGLfilename = "libGL.so";
 #else
         libGLfilename = "libGL.so.1";
