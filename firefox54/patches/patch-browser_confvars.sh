$NetBSD$

--- browser/confvars.sh.orig	2017-06-15 20:51:58.000000000 +0000
+++ browser/confvars.sh
@@ -30,6 +30,7 @@ if test "$OS_ARCH" = "WINNT"; then
   fi
 fi
 
+MOZ_RUST_MP4PARSE=1
 if test "$NIGHTLY_BUILD"; then
   MOZ_RUST_URLPARSE=1
 fi
