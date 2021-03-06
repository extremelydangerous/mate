$NetBSD$

--- mDNSPosix/mDNSUNP.c.orig	2010-06-24 21:49:06.000000000 +0000
+++ mDNSPosix/mDNSUNP.c
@@ -54,8 +54,10 @@
     #include <net/if_dl.h>
 #endif
 
-#if defined(AF_INET6) && HAVE_IPV6 && !HAVE_LINUX
+#if defined(AF_INET6) && HAVE_IPV6 && !HAVE_LINUX && !defined(sun)
+#if !defined(__NetBSD__)
 #include <net/if_var.h>
+#endif
 #include <netinet/in_var.h>
 // Note: netinet/in_var.h implicitly includes netinet6/in6_var.h for us
 #endif
@@ -105,6 +107,8 @@ struct ifi_info *get_ifi_info_linuxv6(in
 					  addr[4],addr[5],addr[6],addr[7],
 					  &index, &plen, &scope, &flags, ifname) != EOF) {
 
+			char ipv6addr[INET6_ADDRSTRLEN];
+
 			myflags = 0;
 			if (strncmp(lastname, ifname, IFNAMSIZ) == 0) {
 				if (doaliases == 0)
@@ -139,7 +143,6 @@ struct ifi_info *get_ifi_info_linuxv6(in
 			memcpy(ifi->ifi_addr, res0->ai_addr, sizeof(struct sockaddr_in6));
 
 			/* Add netmask of the interface */
-			char ipv6addr[INET6_ADDRSTRLEN];
 			plen_to_mask(plen, ipv6addr);
 			ifi->ifi_netmask = calloc(1, sizeof(struct sockaddr_in6));
 			if (ifi->ifi_addr == NULL) {
@@ -488,6 +491,14 @@ recvfrom_flags(int fd, void *ptr, size_t
            set the value to 0, but I'm concerned that 0 
            might be a valid interface value.
         */
+#if HAVE_BROKEN_RECVDSTADDR
+       /* similar to the issue with OpenBSD in mDNSPosix.c, we need
+          to preset sin_family to IF_NET, because of broken IP_RECVDSTADDR
+        */
+        struct in_pktinfo *tmp;
+        struct sockaddr_in *sin = (struct sockaddr_in*)&pktp->ipi_addr;
+        sin->sin_family = AF_INET;
+#endif
         memset(pktp, 0, sizeof(struct my_in_pktinfo));
         pktp->ipi_ifindex = -1;
     }
