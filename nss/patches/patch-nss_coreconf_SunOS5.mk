$NetBSD$

--- nss/coreconf/SunOS5.mk.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/coreconf/SunOS5.mk
@@ -106,7 +106,7 @@ ifdef NS_USE_GCC
 ifeq ($(USE_64), 1)
 	DSO_LDOPTS += -m64
 endif
-	DSO_LDOPTS += -shared -h $(notdir $@)
+	DSO_LDOPTS += -shared -Wl,-h,$(notdir $@)
 else
 ifeq ($(USE_64), 1)
 	ifeq ($(OS_TEST),i86pc)
@@ -119,6 +119,10 @@ endif
 endif
 DSO_LDOPTS += -z combreloc -z defs -z ignore
 
+ifdef LIBRUNPATH
+DSO_LDOPTS += -R$(LIBRUNPATH)
+endif
+
 # -KPIC generates position independent code for use in shared libraries.
 # (Similarly for -fPIC in case of gcc.)
 ifdef NS_USE_GCC
