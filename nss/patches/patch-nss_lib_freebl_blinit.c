$NetBSD$

--- nss/lib/freebl/blinit.c.orig	2018-06-05 10:02:17.000000000 +0000
+++ nss/lib/freebl/blinit.c
@@ -92,7 +92,7 @@ CheckX86CPUSupport()
 #endif /* NSS_X86_OR_X64 */
 
 /* clang-format off */
-#if (defined(__aarch64__) || defined(__arm__)) && !defined(__ANDROID__)
+#if (defined(__aarch64__) || defined(__arm__)) && defined(__linux__)
 #ifndef __has_include
 #define __has_include(x) 0
 #endif
@@ -105,10 +105,10 @@ static unsigned long (*getauxval)(unsign
 #define AT_HWCAP2 0
 #define AT_HWCAP 0
 #endif /* defined(__GNUC__) && __GNUC__ >= 2 && defined(__ELF__)*/
-#endif /* (defined(__aarch64__) || defined(__arm__)) && !defined(__ANDROID__) */
+#endif /* (defined(__aarch64__) || defined(__arm__)) && defined(__linux__) */
 /* clang-format on */
 
-#if defined(__aarch64__) && !defined(__ANDROID__)
+#if defined(__aarch64__) && defined(__linux__)
 // Defines from hwcap.h in Linux kernel - ARM64
 #ifndef HWCAP_AES
 #define HWCAP_AES (1 << 3)
@@ -138,9 +138,9 @@ CheckARMSupport()
     /* aarch64 must support NEON. */
     arm_neon_support_ = disable_arm_neon == NULL;
 }
-#endif /* defined(__aarch64__) && !defined(__ANDROID__) */
+#endif /* defined(__aarch64__) && defined(__linux__) */
 
-#if defined(__arm__) && !defined(__ANDROID__)
+#if defined(__arm__) && defined(__linux__)
 // Defines from hwcap.h in Linux kernel - ARM
 /*
  * HWCAP flags - for elf_hwcap (in kernel) and AT_HWCAP
@@ -179,7 +179,7 @@ CheckARMSupport()
         arm_neon_support_ = hwcaps & HWCAP_NEON && disable_arm_neon == NULL;
     }
 }
-#endif /* defined(__arm__) && !defined(__ANDROID__) */
+#endif /* defined(__arm__) && defined(__linux__) */
 
 // Enable when Firefox can use it.
 // #if defined(__ANDROID__) && (defined(__arm__) || defined(__aarch64__))
@@ -262,7 +262,7 @@ FreeblInit(void)
 {
 #ifdef NSS_X86_OR_X64
     CheckX86CPUSupport();
-#elif (defined(__aarch64__) || defined(__arm__)) && !defined(__ANDROID__)
+#elif (defined(__aarch64__) || defined(__arm__)) && defined(__linux__)
     CheckARMSupport();
 #endif
     return PR_SUCCESS;
