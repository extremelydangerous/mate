$NetBSD$

--- libretroshare/src/util/rsthreads.cc.orig	2018-07-04 16:09:55.000000000 +0000
+++ libretroshare/src/util/rsthreads.cc
@@ -194,7 +194,7 @@ void RsThread::start(const std::string &
 
         // set name
 
-        if(pthread_setname_np)
+        if(pthread_setname_np(tid,threadName.c_str()))
         {
             if(!threadName.empty())
             {
