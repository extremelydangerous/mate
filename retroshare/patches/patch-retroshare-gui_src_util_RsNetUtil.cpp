--- retroshare-gui/src/util/RsNetUtil.cpp.orig	2016-02-05 19:04:46 UTC
+++ retroshare-gui/src/util/RsNetUtil.cpp
--- retroshare-gui/src/util/RsNetUtil.cpp.orig	2018-03-13 19:25:38.000000000 +0000
+++ retroshare-gui/src/util/RsNetUtil.cpp
@@ -29,6 +29,8 @@
 #ifdef WINDOWS_SYS
 #include <ws2tcpip.h>
 #else
+#include <sys/types.h>
+#include <sys/socket.h>
 #include <netinet/in.h>
 #endif
 
