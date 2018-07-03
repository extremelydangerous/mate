$NetBSD$

--- dom/media/AudioStream.h.orig	2017-06-15 20:52:20.000000000 +0000
+++ dom/media/AudioStream.h
@@ -16,7 +16,11 @@
 #include "mozilla/TimeStamp.h"
 #include "mozilla/UniquePtr.h"
 #include "CubebUtils.h"
+#ifdef MOZ_SYSTEM_SOUNDTOUCH
+#include "soundtouch/SoundTouch.h"
+#else
 #include "soundtouch/SoundTouchFactory.h"
+#endif
 
 namespace mozilla {
 
@@ -287,7 +291,11 @@ private:
   uint32_t mChannels;
   uint32_t mOutChannels;
   AudioClock mAudioClock;
+#ifdef MOZ_SYSTEM_SOUNDTOUCH
+  nsAutoPtr<soundtouch::SoundTouch> mTimeStretcher;
+#else
   soundtouch::SoundTouch* mTimeStretcher;
+#endif
 
   // Output file for dumping audio
   FILE* mDumpFile;
