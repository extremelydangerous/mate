$NetBSD$

--- js/xpconnect/src/xpcprivate.h.orig	2017-06-15 20:52:30.000000000 +0000
+++ js/xpconnect/src/xpcprivate.h
@@ -841,6 +841,8 @@ typedef nsTArray<InterpositionWhitelistP
 /***************************************************************************/
 // XPCWrappedNativeScope is one-to-one with a JS global object.
 
+extern template class JS_PUBLIC_API(JS::WeakMapPtr)<JSObject*, JSObject*>;
+
 class nsIAddonInterposition;
 class nsXPCComponentsBase;
 class XPCWrappedNativeScope final : public PRCList
