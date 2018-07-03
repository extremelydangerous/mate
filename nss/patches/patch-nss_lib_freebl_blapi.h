$NetBSD$

--- nss/lib/freebl/blapi.h.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/lib/freebl/blapi.h
@@ -1211,6 +1211,8 @@ extern void SHA1_DestroyContext(SHA1Cont
 */
 extern void SHA1_Begin(SHA1Context *cx);
 
+#define SHA1_Update NSS_SHA1_Update
+
 /*
 ** Update the SHA-1 hash function with more data.
 **  "cx" the context
