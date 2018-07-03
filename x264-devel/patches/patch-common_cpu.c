$NetBSD$

--- common/cpu.c.orig	2014-12-18 21:45:04.000000000 +0000
+++ common/cpu.c
@@ -39,7 +39,7 @@
 #include <sys/types.h>
 #include <sys/sysctl.h>
 #endif
-#if SYS_OPENBSD
+#if defined(SYS_OPENBSD) || defined(SYS_NETBSD)
 #include <sys/param.h>
 #include <sys/sysctl.h>
 #include <machine/cpu.h>
@@ -316,13 +316,13 @@ uint32_t x264_cpu_detect( void )
 
 #elif ARCH_PPC
 
-#if SYS_MACOSX || SYS_OPENBSD
+#if defined(SYS_MACOSX) || defined(SYS_OPENBSD) || defined(SYS_NETBSD)
 #include <sys/sysctl.h>
 uint32_t x264_cpu_detect( void )
 {
     /* Thank you VLC */
     uint32_t cpu = 0;
-#if SYS_OPENBSD
+#if defined(SYS_OPENBSD) || defined(SYS_NETBSD)
     int      selectors[2] = { CTL_MACHDEP, CPU_ALTIVEC };
 #else
     int      selectors[2] = { CTL_HW, HW_VECTORUNIT };
@@ -466,7 +466,7 @@ int x264_cpu_num_processors( void )
 #elif SYS_MACOSX || SYS_FREEBSD || SYS_OPENBSD
     int ncpu;
     size_t length = sizeof( ncpu );
-#if SYS_OPENBSD
+#if defined(SYS_OPENBSD) || defined(SYS_NETBSD)
     int mib[2] = { CTL_HW, HW_NCPU };
     if( sysctl(mib, 2, &ncpu, &length, NULL, 0) )
 #else
