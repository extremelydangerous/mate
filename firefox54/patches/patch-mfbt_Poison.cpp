$NetBSD$

--- mfbt/Poison.cpp.orig	2017-06-15 20:52:21.000000000 +0000
+++ mfbt/Poison.cpp
@@ -129,7 +129,11 @@ ReleaseRegion(void* aRegion, uintptr_t a
 static bool
 ProbeRegion(uintptr_t aRegion, uintptr_t aSize)
 {
+#if !defined(__sun__)
   if (madvise(reinterpret_cast<void*>(aRegion), aSize, MADV_NORMAL)) {
+#else
+  if (posix_madvise(reinterpret_cast<void*>(aRegion), aSize, MADV_NORMAL)) {
+#endif
     return true;
   } else {
     return false;
