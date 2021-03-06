$NetBSD$

--- xpcom/reflect/xptcall/md/unix/xptcinvoke_asm_ppc_netbsd.s.orig	2017-06-15 20:52:36.000000000 +0000
+++ xpcom/reflect/xptcall/md/unix/xptcinvoke_asm_ppc_netbsd.s
@@ -20,15 +20,15 @@
 		      
         .section ".text"
 	.align 2
-	.globl XPTC_InvokeByIndex
-	.type  XPTC_InvokeByIndex,@function
+	.globl NS_InvokeByIndex_P
+	.type  NS_InvokeByIndex_P,@function
 
 #
-# XPTC_InvokeByIndex(nsISupports* that, uint32_t methodIndex,
-#                    uint32_t paramCount, nsXPTCVariant* params)
+# NS_InvokeByIndex_P(nsISupports* that, PRUint32 methodIndex,
+#                    PRUint32 paramCount, nsXPTCVariant* params)
 #
 
-XPTC_InvokeByIndex:
+NS_InvokeByIndex_P:
 	stwu    sp,-32(sp)			# setup standard stack frame
 	mflr    r0				# save LR
 	stw     r3,8(sp)			# r3 <= that
