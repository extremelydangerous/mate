$NetBSD$

--- dom/plugins/ipc/PluginModuleChild.h.orig	2017-06-15 20:52:24.000000000 +0000
+++ dom/plugins/ipc/PluginModuleChild.h
@@ -256,7 +256,7 @@ private:
 
     // we get this from the plugin
     NP_PLUGINSHUTDOWN mShutdownFunc;
-#if defined(OS_LINUX) || defined(OS_BSD)
+#if defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS)
     NP_PLUGINUNIXINIT mInitializeFunc;
 #elif defined(OS_WIN) || defined(OS_MACOSX)
     NP_PLUGININIT mInitializeFunc;
