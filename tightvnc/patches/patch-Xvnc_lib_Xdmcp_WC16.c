$NetBSD$

--- Xvnc/lib/Xdmcp/WC16.c.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/lib/Xdmcp/WC16.c
@@ -34,9 +34,7 @@ in this Software without prior written a
 #include <X11/Xdmcp.h>
 
 int
-XdmcpWriteCARD16 (buffer, value)
-    XdmcpBufferPtr  buffer;
-    CARD16	    value;
+XdmcpWriteCARD16 (XdmcpBufferPtr buffer, unsigned value)
 {
     if (!XdmcpWriteCARD8 (buffer, value >> 8))
 	return FALSE;
