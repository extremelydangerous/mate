--- retroshare-gui/src/retroshare-gui.pro.orig	2016-02-05 19:04:46 UTC
+++ retroshare-gui/src/retroshare-gui.pro
--- retroshare-gui/src/retroshare-gui.pro.orig	2018-03-13 19:25:38.000000000 +0000
+++ retroshare-gui/src/retroshare-gui.pro
@@ -265,17 +265,35 @@ macx {
 	#DEFINES *= MAC_IDLE # for idle feature
 	CONFIG -= uitools
 }
+##################################### NetBSD ######################################
+
+netbsd-* {
+	LIBS *= -lssl -lcrypto
+	LIBS *= -lgpgme
+	LIBS *= -lupnp
+	LIBS *= -lgnome-keyring
+	LIBS *= -lz
+	LIBS *= -lixml
+	LIBS *= -lexecinfo
+
+	LIBS += -lsqlcipher
+	LIBS *= -rdynamic
+}
 
 ##################################### FreeBSD ######################################
 
 freebsd-* {
 	INCLUDEPATH *= /usr/local/include/gpgme
-	LIBS *= -lssl
+	LIBS *= -lssl -lcrypto
 	LIBS *= -lgpgme
 	LIBS *= -lupnp
 	LIBS *= -lgnome-keyring
+	LIBS *= -lz
+	LIBS *= -lixml
+	LIBS *= -lexecinfo
 
-	LIBS += -lsqlite3
+	LIBS += -lsqlcipher
+	LIBS *= -rdynamic
 }
 
 ##################################### Haiku ######################################
