$NetBSD$

--- nss/tests/merge/merge.sh.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/tests/merge/merge.sh
@@ -98,7 +98,7 @@ merge_init()
   # are dbm databases.
   if [ "${TEST_MODE}" = "UPGRADE_DB" ]; then
 	save=${NSS_DEFAULT_DB_TYPE}
-	NSS_DEFAULT_DB_TYPE=dbm ; export NSS_DEFAULT_DB_TYPE
+	NSS_DEFAULT_DB_TYPE= ; export NSS_DEFAULT_DB_TYPE
   fi
 
   certutil -N -d ${CONFLICT1DIR} -f ${R_PWFILE}
