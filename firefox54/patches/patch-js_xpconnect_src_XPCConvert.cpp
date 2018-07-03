$NetBSD$

--- js/xpconnect/src/XPCConvert.cpp.orig	2017-06-15 20:52:30.000000000 +0000
+++ js/xpconnect/src/XPCConvert.cpp
@@ -138,7 +138,7 @@ XPCConvert::NativeData2JS(MutableHandleV
         d.setNumber(*static_cast<const float*>(s));
         return true;
     case nsXPTType::T_DOUBLE:
-        d.setNumber(*static_cast<const double*>(s));
+        d.setNumber(CanonicalizeNaN(*static_cast<const double*>(s)));
         return true;
     case nsXPTType::T_BOOL  :
         d.setBoolean(*static_cast<const bool*>(s));
