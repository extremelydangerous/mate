$NetBSD$

--- config/system_wrappers/unwind.h.orig	2018-06-01 12:34:22.072080573 +0000
+++ config/system_wrappers/unwind.h
@@ -0,0 +1,4 @@
+#pragma GCC system_header
+#pragma GCC visibility push(default)
+#include_next <unwind.h>
+#pragma GCC visibility pop
