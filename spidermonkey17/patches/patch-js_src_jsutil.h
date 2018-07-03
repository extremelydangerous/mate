$NetBSD$

--- js/src/jsutil.h.orig	2013-02-11 22:33:23.000000000 +0000
+++ js/src/jsutil.h
@@ -432,10 +432,10 @@ typedef size_t jsbitmap;
 #if defined(__clang__)
 # define JS_SILENCE_UNUSED_VALUE_IN_EXPR(expr)                                \
     JS_BEGIN_MACRO                                                            \
-        _Pragma("clang diagnostic push")                                      \
-        _Pragma("clang diagnostic ignored \"-Wunused-value\"")                \
-        expr;                                                                 \
-        _Pragma("clang diagnostic pop")                                       \
+        _Pragma("(clang diagnostic push)")                                    \
+        _Pragma("(clang diagnostic ignored \"-Wunused-value\")")              \
+        {expr;}                                                               \
+        _Pragma("(clang diagnostic pop)")                                     \
     JS_END_MACRO
 #elif (__GNUC__ >= 5) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
 # define JS_SILENCE_UNUSED_VALUE_IN_EXPR(expr)                                \
