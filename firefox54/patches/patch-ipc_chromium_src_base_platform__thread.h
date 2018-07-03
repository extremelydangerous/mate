$NetBSD$

--- ipc/chromium/src/base/platform_thread.h.orig	2017-06-15 20:51:57.000000000 +0000
+++ ipc/chromium/src/base/platform_thread.h
@@ -27,6 +27,9 @@ typedef pthread_t PlatformThreadHandle;
 #if defined(OS_LINUX) || defined(OS_OPENBSD) || defined(__GLIBC__)
 #include <unistd.h>
 typedef pid_t PlatformThreadId;
+#elif defined(OS_SOLARIS)
+#include <sys/lwp.h>
+typedef lwpid_t PlatformThreadId;
 #elif defined(OS_BSD)
 #include <sys/types.h>
 typedef lwpid_t PlatformThreadId;
