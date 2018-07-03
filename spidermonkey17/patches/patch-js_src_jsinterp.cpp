$NetBSD$

--- js/src/jsinterp.cpp.orig	2013-02-11 22:33:22.000000000 +0000
+++ js/src/jsinterp.cpp
@@ -1238,6 +1238,7 @@ js::Interpret(JSContext *cx, StackFrame 
     RootedPropertyName rootName0(cx);
     RootedId rootId0(cx);
     RootedShape rootShape0(cx);
+    DebugOnly<uint32_t> blockDepth;
 
     if (!entryFrame)
         entryFrame = regs.fp();
@@ -3664,7 +3665,7 @@ BEGIN_CASE(JSOP_LEAVEBLOCK)
 BEGIN_CASE(JSOP_LEAVEFORLETIN)
 BEGIN_CASE(JSOP_LEAVEBLOCKEXPR)
 {
-    DebugOnly<uint32_t> blockDepth = regs.fp()->blockChain().stackDepth();
+    blockDepth = regs.fp()->blockChain().stackDepth();
 
     regs.fp()->popBlock(cx);
 
