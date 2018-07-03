$NetBSD$

--- Xvnc/programs/Xserver/include/servermd.h.orig	2006-12-23 12:07:55.000000000 +0000
+++ Xvnc/programs/Xserver/include/servermd.h
@@ -132,7 +132,7 @@ SOFTWARE.
 
 #endif /* vax */
 
-#if (defined(Lynx) && defined(__powerpc__))
+#if ((defined(__NetBSD__) || defined(Lynx)) && defined(__powerpc__))
 
 /* For now this is for Xvfb only */
 #define IMAGE_BYTE_ORDER        MSBFirst
@@ -341,7 +341,7 @@ SOFTWARE.
 #define BITMAP_BIT_ORDER   MSBFirst
 #endif /* (__s390__ || __s390x__) && linux */
     
-#if (defined(i386) && (defined(SVR4) || defined(SYSV) || (defined(sun) && defined(SVR4))) || defined(__bsdi__) || (defined(__NetBSD__) && defined(__i386__)) || (defined(__OpenBSD__) && defined(__i386__)) || defined(__FreeBSD__) || defined(MACH386) || (defined(linux) && !defined(__mc68000__)) || (defined(AMOEBA) && defined(i80386)) || defined(MINIX) || defined(__EMX__) || (defined(Lynx) && defined(__i386__)))
+#if (defined(i386) && (defined(SVR4) || defined(SYSV) || (defined(sun) && defined(SVR4))) || defined(__bsdi__) || (defined(__NetBSD__) && (defined(__i386__) || defined(__arm32__) || defined(__arm__))) || (defined(__OpenBSD__) && defined(__i386__)) || defined(__FreeBSD__) || defined(MACH386) || (defined(linux) && !defined(__mc68000__)) || (defined(AMOEBA) && defined(i80386)) || defined(MINIX) || defined(__EMX__) || (defined(Lynx) && defined(__i386__))) || (defined(__x86_64__) && defined(__NetBSD__))
 
 #ifndef IMAGE_BYTE_ORDER
 #define IMAGE_BYTE_ORDER	LSBFirst
