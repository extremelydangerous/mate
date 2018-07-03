$NetBSD$

--- vncviewer/listen.c.orig	2006-12-05 11:12:42.000000000 +0000
+++ vncviewer/listen.c
@@ -111,7 +111,11 @@ listenForIncomingConnections(int *argc, 
 
     /* reap any zombies */
     int status, pid;
+#ifdef __INTERIX
+    while ((pid= waitpid(-1, &status, WNOHANG))>0);
+#else
     while ((pid= wait3(&status, WNOHANG, (struct rusage *)0))>0);
+#endif
 
     /* discard any X events */
     while (XCheckIfEvent(d, &ev, AllXEventsPredicate, NULL))
