$NetBSD$

--- Xvnc/lib/Xdmcp/WC8.c.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/lib/Xdmcp/WC8.c
@@ -34,9 +34,7 @@ in this Software without prior written a
 #include <X11/Xdmcp.h>
 
 int
-XdmcpWriteCARD8 (buffer, value)
-    XdmcpBufferPtr  buffer;
-    CARD8	    value;
+XdmcpWriteCARD8(XdmcpBufferPtr buffer, unsigned value)
 {
     if (buffer->pointer >= buffer->size)
 	return FALSE;
