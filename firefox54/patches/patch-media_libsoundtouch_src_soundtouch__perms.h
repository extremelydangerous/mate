$NetBSD$

--- media/libsoundtouch/src/soundtouch_perms.h.orig	2017-06-15 20:52:14.000000000 +0000
+++ media/libsoundtouch/src/soundtouch_perms.h
@@ -12,7 +12,9 @@
 
 #pragma GCC visibility push(default)
 #include "SoundTouch.h"
+#ifndef MOZ_SYSTEM_SOUNDTOUCH
 #include "SoundTouchFactory.h"
+#endif
 #pragma GCC visibility pop
 
 #endif // MOZILLA_SOUNDTOUCH_PERMS_H
