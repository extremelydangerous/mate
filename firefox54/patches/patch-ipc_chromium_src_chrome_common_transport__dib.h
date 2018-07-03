$NetBSD$

--- ipc/chromium/src/chrome/common/transport_dib.h.orig	2017-06-15 20:51:57.000000000 +0000
+++ ipc/chromium/src/chrome/common/transport_dib.h
@@ -68,7 +68,7 @@ class TransportDIB {
   typedef base::SharedMemoryHandle Handle;
   // On Mac, the inode number of the backing file is used as an id.
   typedef base::SharedMemoryId Id;
-#elif defined(OS_LINUX)
+#elif defined(OS_LINUX) || defined(OS_SOLARIS)
   typedef int Handle;  // These two ints are SysV IPC shared memory keys
   typedef int Id;
 #endif
