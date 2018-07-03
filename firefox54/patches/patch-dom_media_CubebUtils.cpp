$NetBSD$

--- dom/media/CubebUtils.cpp.orig	2017-06-15 20:52:20.000000000 +0000
+++ dom/media/CubebUtils.cpp
@@ -88,7 +88,8 @@ const char* AUDIOSTREAM_BACKEND_ID_STR[]
   "sndio",
   "opensl",
   "audiotrack",
-  "kai"
+  "kai",
+  "oss",
 };
 /* Index for failures to create an audio stream the first time. */
 const int CUBEB_BACKEND_INIT_FAILURE_FIRST =
