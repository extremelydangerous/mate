$NetBSD$

--- media/libyuv/libyuv/source/mjpeg_decoder.cc.orig	2017-06-15 20:52:15.000000000 +0000
+++ media/libyuv/libyuv/source/mjpeg_decoder.cc
@@ -25,7 +25,7 @@
 #endif
 
 #endif
-struct FILE;  // For jpeglib.h.
+//struct FILE;  // For jpeglib.h.
 
 // C++ build requires extern C for jpeg internals.
 #ifdef __cplusplus
