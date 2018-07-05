--- libretroshare/src/libretroshare.pro.orig	2018-03-13 19:25:38 UTC
+++ libretroshare/src/libretroshare.pro
--- libretroshare/src/libretroshare.pro.orig	2018-03-13 19:25:38.000000000 +0000
+++ libretroshare/src/libretroshare.pro
@@ -191,7 +191,7 @@ linux-* {
 
 	# linux/bsd can use either - libupnp is more complete and packaged.
 	#CONFIG += upnp_miniupnpc 
-    CONFIG += upnp_libupnp
+	CONFIG += upnp_libupnp
 
 	# Check if the systems libupnp has been Debian-patched
 	system(grep -E 'char[[:space:]]+PublisherUrl' /usr/include/upnp/upnp.h >/dev/null 2>&1) {
@@ -337,17 +337,32 @@ mac {
 		DEFINES *= DATA_DIR=\"\\\"$${DATA_DIR}\\\"\"
 }
 
+################################# NetBSD ##########################################
+
+netbsd-* {
+	INCLUDEPATH *= /usr/pkg/include/gpgme
+	INCLUDEPATH += $$system(pkg-config --cflags glib-2.0 | sed -e "s/-I//g")
+
+	QMAKE_CXXFLAGS *= -Dfseeko64=fseeko -Dftello64=ftello -Dstat64=stat -Dstatvfs64=statvfs -Dfopen64=fopen
+
+	CONFIG += upnp_libupnp 
+	DEFINES *= PLUGIN_DIR=\"\\\"$${PLUGIN_DIR}\\\"\"
+	DEFINES *= DATA_DIR=\"\\\"$${DATA_DIR}\\\"\"
+}
+
 ################################# FreeBSD ##########################################
 
 freebsd-* {
 	INCLUDEPATH *= /usr/local/include/gpgme
-	INCLUDEPATH *= /usr/local/include/glib-2.0
+	INCLUDEPATH += $$system(pkg-config --cflags glib-2.0 | sed -e "s/-I//g")
 
 	QMAKE_CXXFLAGS *= -Dfseeko64=fseeko -Dftello64=ftello -Dstat64=stat -Dstatvfs64=statvfs -Dfopen64=fopen
 
 	# linux/bsd can use either - libupnp is more complete and packaged.
 	#CONFIG += upnp_miniupnpc 
     CONFIG += upnp_libupnp
+	DEFINES *= PLUGIN_DIR=\"\\\"$${PLUGIN_DIR}\\\"\"
+	DEFINES *= DATA_DIR=\"\\\"$${DATA_DIR}\\\"\"
 }
 
 ################################# OpenBSD ##########################################
