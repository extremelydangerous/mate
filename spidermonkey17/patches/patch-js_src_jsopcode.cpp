$NetBSD$

--- js/src/jsopcode.cpp.orig	2013-02-11 22:33:23.000000000 +0000
+++ js/src/jsopcode.cpp
@@ -6067,7 +6067,7 @@ ExpressionDecompiler::write(JSString *s)
 bool
 ExpressionDecompiler::quote(JSString *s, uint32_t quote)
 {
-    return QuoteString(&sprinter, s, quote) >= 0;
+    return QuoteString(&sprinter, s, quote) != NULL;
 }
 
 JSAtom *
