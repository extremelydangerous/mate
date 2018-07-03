$NetBSD$

--- nss/coreconf/OpenBSD.mk.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/coreconf/OpenBSD.mk
@@ -24,7 +24,7 @@ OS_LIBS			+= -pthread
 DSO_LDOPTS		+= -pthread
 endif
 
-DLL_SUFFIX		= so.1.0
+DLL_SUFFIX		= so
 
 OS_CFLAGS		= $(DSO_CFLAGS) $(OS_REL_CFLAGS) -Wall -Wno-switch -pipe -DOPENBSD
 
@@ -38,4 +38,4 @@ DSO_LDOPTS		= -shared -fPIC -Wl,-soname,
 MKSHLIB			= $(CC) $(DSO_LDOPTS)
 
 USE_SYSTEM_ZLIB		= 1
-ZLIB_LIBS		= -lz
+#ZLIB_LIBS		= -lz
