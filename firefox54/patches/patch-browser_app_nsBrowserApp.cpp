$NetBSD$

--- browser/app/nsBrowserApp.cpp.orig	2017-06-15 20:51:55.000000000 +0000
+++ browser/app/nsBrowserApp.cpp
@@ -261,6 +261,11 @@ int main(int argc, char* argv[], char* e
 {
   mozilla::TimeStamp start = mozilla::TimeStamp::Now();
 
+  setenv("MOZ_PLUGIN_PATH", "@PREFIX@/lib/browser_plugins/symlinks/gecko", 0);
+
+  setenv("MOZ_GMP_PATH", "@PREFIX@/lib/browser_plugins/symlinks/gecko", 0);
+  setenv("MOZ_PLUGIN_PATH", "@PREFIX@/lib/browser_plugins/symlinks/gecko", 0);
+
 #ifdef HAS_DLL_BLOCKLIST
   DllBlocklist_Initialize();
 #endif
