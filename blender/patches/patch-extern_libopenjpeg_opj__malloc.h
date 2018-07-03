$NetBSD$

--- extern/libopenjpeg/opj_malloc.h.orig	2018-06-30 06:10:13.000000000 +0000
+++ extern/libopenjpeg/opj_malloc.h
@@ -84,6 +84,8 @@ Allocate memory aligned to a 16 byte bou
 	#if defined(__sun)
 		#define HAVE_MEMALIGN
 	/* Linux x86_64 and OSX always align allocations to 16 bytes */
+	#elif defined(__NetBSD__)
+		#define HAVE_POSIX_MEMALIGN
 	#elif !defined(__amd64__) && !defined(__APPLE__)	
 		#define HAVE_MEMALIGN
 		#include <malloc.h>			
