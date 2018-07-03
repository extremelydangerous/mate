$NetBSD$

--- ipc/chromium/src/base/process_util.h.orig	2017-06-15 20:51:57.000000000 +0000
+++ ipc/chromium/src/base/process_util.h
@@ -44,6 +44,9 @@
 typedef PROCESSENTRY32 ProcessEntry;
 typedef IO_COUNTERS IoCounters;
 #elif defined(OS_POSIX)
+#ifndef NAME_MAX
+#define NAME_MAX _POSIX_NAME_MAX
+#endif
 // TODO(port): we should not rely on a Win32 structure.
 struct ProcessEntry {
   int pid;
