$NetBSD$

--- mDNSCore/mDNS.c.orig	2010-11-18 01:05:40.000000000 +0000
+++ mDNSCore/mDNS.c
@@ -4020,8 +4020,10 @@ mDNSexport void mDNS_UpdateAllowSleep(mD
 #endif /* !defined(IDLESLEEPCONTROL_DISABLED) */
 		}
 	
+#if 0
 	// Call the platform code to enable/disable sleep
 	mDNSPlatformSetAllowSleep(m, allowSleep);
+#endif
 	}
 
 mDNSlocal void SendSPSRegistration(mDNS *const m, NetworkInterfaceInfo *intf, const mDNSOpaque16 id)
