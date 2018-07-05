$NetBSD$

--- libbitdht/src/util/bdrandom.cc.orig	2018-07-04 15:57:13.000000000 +0000
+++ libbitdht/src/util/bdrandom.cc
@@ -13,7 +13,7 @@ static bool auto_seed = bdRandom::seed( 
 #else
   #ifdef __APPLE__
 	static bool auto_seed = bdRandom::seed( (time(NULL) + pthread_mach_thread_np(pthread_self())*0x1293fe + (getpid()^0x113ef76b))^0x18e34a12 ) ;
-  #elif defined(__FreeBSD__) || (__HAIKU__)
+  #elif defined(__FreeBSD__) || (__HAIKU__) || defined(__NetBSD__)
     // since this is completely insecure anyway, just kludge for now
     static bool auto_seed = bdRandom::seed(time(NULL));
   #elif defined(__OpenBSD__)
