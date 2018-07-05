$NetBSD$

--- plugins/Common/retroshare_plugin.pri.orig	2018-07-05 03:17:45.000000000 +0000
+++ plugins/Common/retroshare_plugin.pri
@@ -7,6 +7,7 @@ DEPENDPATH += $$PWD/../../libretroshare/
 INCLUDEPATH += $$PWD/../../libretroshare/src/ $$PWD/../../retroshare-gui/src/
 
 unix {
+	INCLUDEPATH += . /usr/pkg/include/ffmpeg3 /usr/pkg/include/libxml2
 	target.path = "$${PLUGIN_DIR}"
 	INSTALLS += target
 }
