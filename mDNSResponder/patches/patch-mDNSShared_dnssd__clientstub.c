$NetBSD$

--- mDNSShared/dnssd_clientstub.c.orig	2010-06-17 00:06:28.000000000 +0000
+++ mDNSShared/dnssd_clientstub.c
@@ -74,6 +74,7 @@
 	#include <sys/fcntl.h>		// For O_RDWR etc.
 	#include <sys/time.h>
 	#include <sys/socket.h>
+	#include <sys/uio.h>
 	#include <syslog.h>
 	
 	#define sockaddr_mdns sockaddr_un
