--- retroshare.pri.orig	2018-03-13 19:25:38 UTC
+++ retroshare.pri
--- retroshare.pri.orig	2018-03-13 19:25:38.000000000 +0000
+++ retroshare.pri
@@ -11,12 +11,12 @@ no_retroshare_gui:CONFIG -= retroshare_g
 
 # To disable RetroShare-nogui append the following
 # assignation to qmake command line "CONFIG+=no_retroshare_nogui"
-CONFIG *= retroshare_nogui
+CONFIG *= no_retroshare_nogui
 no_retroshare_nogui:CONFIG -= retroshare_nogui
 
 # To enable RetroShare plugins append the following
 # assignation to qmake command line "CONFIG+=retroshare_plugins"
-CONFIG *= no_retroshare_plugins
+CONFIG *=retroshare_plugins
 retroshare_plugins:CONFIG -= no_retroshare_plugins
 
 # To enable RetroShare-android-service append the following assignation to
@@ -100,9 +100,24 @@ rs_macos10.9:CONFIG -= rs_macos10.11
 rs_macos10.10:CONFIG -= rs_macos10.11
 rs_macos10.12:CONFIG -= rs_macos10.11
 
+netbsd-* {
+	isEmpty(PREFIX)   { PREFIX   = "/usr/pkg" }
+	isEmpty(BIN_DIR)  { BIN_DIR  = "$${PREFIX}/bin" }
+	isEmpty(INC_DIR)  { INC_DIR  = "$${PREFIX}/include/retroshare" }
+	isEmpty(LIB_DIR)  { LIB_DIR  = "$${PREFIX}/lib" }
+	isEmpty(DATA_DIR) { DATA_DIR = "$${PREFIX}/share/retroshare" }
+	isEmpty(PLUGIN_DIR) { PLUGIN_DIR = "$${LIB_DIR}/retroshare/extensions6" }
+
+    rs_autologin {
+        !macx {
+            DEFINES *= HAS_GNOME_KEYRING
+            PKGCONFIG *= gnome-keyring-1
+        }
+    }
+}
 
-linux-* {
-	isEmpty(PREFIX)   { PREFIX   = "/usr" }
+freebsd-* {
+	isEmpty(PREFIX)   { PREFIX   = "/usr/local" }
 	isEmpty(BIN_DIR)  { BIN_DIR  = "$${PREFIX}/bin" }
 	isEmpty(INC_DIR)  { INC_DIR  = "$${PREFIX}/include/retroshare" }
 	isEmpty(LIB_DIR)  { LIB_DIR  = "$${PREFIX}/lib" }
