$NetBSD$

--- js/src/jsval.h.orig	2013-03-25 20:34:20.000000000 +0000
+++ js/src/jsval.h
@@ -304,7 +304,6 @@ typedef union jsval_layout
             int32_t        i32;
             uint32_t       u32;
             JSWhyMagic     why;
-            jsuword        word;
         } payload;
     } s;
     double asDouble;
