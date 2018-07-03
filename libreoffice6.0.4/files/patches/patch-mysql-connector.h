--- workdir/UnpackedTarball/mysql-connector-cpp/cppconn/config.h.orig	2018-06-24 16:58:30.000000000 -0300
+++ workdir/UnpackedTarball/mysql-connector-cpp/cppconn/config.h	2018-06-24 17:00:03.000000000 -0300
@@ -21,7 +21,7 @@
 #include <inttypes.h>
 #endif
 
-#if !defined(HAVE_STDINT_H) && !defined(HAVE_INTTYPES_H)
+#if !defined(HAVE_STDINT_H) && !defined(HAVE_INTTYPES_H) && !defined(int32_t)
 
 // if we do not have the standard C99 integer types, then define them based on the respective SAL types
 #if !defined(_SYS_TYPES_H)
