$NetBSD$

--- nss/lib/util/utilpars.c.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/lib/util/utilpars.c
@@ -1111,8 +1111,12 @@ _NSSUTIL_EvaluateConfigDir(const char *c
     NSSDBType dbType;
     PRBool checkEnvDefaultDB = PR_FALSE;
     *appName = NULL;
-    /* force the default */
+/* force the default */
+#ifdef NSS_DISABLE_DBM
     dbType = NSS_DB_TYPE_SQL;
+#else
+    dbType = NSS_DB_TYPE_LEGACY;
+#endif
     if (configdir == NULL) {
         checkEnvDefaultDB = PR_TRUE;
     } else if (PORT_Strncmp(configdir, MULTIACCESS, sizeof(MULTIACCESS) - 1) == 0) {
