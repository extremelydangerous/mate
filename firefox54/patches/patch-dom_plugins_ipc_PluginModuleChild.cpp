$NetBSD$

--- dom/plugins/ipc/PluginModuleChild.cpp.orig	2017-06-15 20:52:24.000000000 +0000
+++ dom/plugins/ipc/PluginModuleChild.cpp
@@ -286,7 +286,7 @@ PluginModuleChild::InitForChrome(const s
 
     // TODO: use PluginPRLibrary here
 
-#if defined(OS_LINUX) || defined(OS_BSD)
+#if defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS)
     mShutdownFunc =
         (NP_PLUGINSHUTDOWN) PR_FindFunctionSymbol(mLibrary, "NP_Shutdown");
 
@@ -1833,7 +1833,7 @@ PluginModuleChild::AnswerNP_GetEntryPoin
     AssertPluginThread();
     MOZ_ASSERT(mIsChrome);
 
-#if defined(OS_LINUX) || defined(OS_BSD)
+#if defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS)
     return IPC_OK();
 #elif defined(OS_WIN) || defined(OS_MACOSX)
     *_retval = mGetEntryPointsFunc(&mFunctions);
@@ -1881,7 +1881,7 @@ PluginModuleChild::DoNP_Initialize(const
 #endif
 
     NPError result;
-#if defined(OS_LINUX) || defined(OS_BSD)
+#if defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS)
     result = mInitializeFunc(&sBrowserFuncs, &mFunctions);
 #elif defined(OS_WIN) || defined(OS_MACOSX)
     result = mInitializeFunc(&sBrowserFuncs);
