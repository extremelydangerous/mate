$NetBSD$

--- nss/cmd/platlibs.mk.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/cmd/platlibs.mk
@@ -177,8 +177,8 @@ endif
 # $(PROGRAM) has NO explicit dependencies on $(EXTRA_SHARED_LIBS)
 # $(EXTRA_SHARED_LIBS) come before $(OS_LIBS), except on AIX.
 EXTRA_SHARED_LIBS += \
-	-L$(SQLITE_LIB_DIR) \
-	-l$(SQLITE_LIB_NAME) \
+	`pkg-config --libs-only-L sqlite3` \
+	`pkg-config --libs-only-l sqlite3` \
 	-L$(NSSUTIL_LIB_DIR) \
 	-lnssutil3 \
 	-L$(NSPR_LIB_DIR) \
