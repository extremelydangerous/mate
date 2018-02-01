--- /dev/null	2018-01-30 03:20:07.329182589 -0200
+++ BLAS/SRC/stack.c	2018-01-30 03:15:27.993949143 -0200
@@ -0,0 +1,4 @@
+void __stack_chk_fail_local() {
+};
+
+void __stack_chk_fail_local() __attribute__((weak));
