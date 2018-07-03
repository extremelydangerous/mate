--- bridges/source/cpp_uno/gcc3_linux_intel/share.hxx.orig	2018-05-04 13:30:05.000000000 +0000
+++ bridges/source/cpp_uno/gcc3_linux_intel/share.hxx
@@ -33,10 +33,43 @@
 #include <uno/any2.h>
 #include "uno/mapping.h"
 
-namespace CPPU_CURRENT_NAMESPACE
+#ifdef __clang__
+
+namespace __cxxabiv1
 {
+    struct __class_type_info : public std::type_info
+    {
+        explicit __class_type_info( const char *__n ) : type_info( __n ) { }
+        virtual ~__class_type_info();
+    };
+
+    struct __si_class_type_info : public __class_type_info
+    {
+        explicit __si_class_type_info( const char *__n, const __class_type_info *__b ) :
+            __class_type_info( __n ), __base_type( __b ) { }
+        virtual ~__si_class_type_info();
+        const __class_type_info *__base_type;
+    };
 
-void dummy_can_throw_anything( char const * );
+extern "C" void *__cxa_allocate_exception( std::size_t thrown_size ) _NOEXCEPT;
+
+extern "C" _LIBCPP_NORETURN void __cxa_throw(
+    void *thrown_exception, std::type_info *tinfo, void (*dest) (void *) );
+}
+
+#else
+
+namespace CPPU_CURRENT_NAMESPACE
+{
+#if defined(__NetBSD__)
+struct _Unwind_Exception
+{
+    unsigned exception_class __attribute__((__mode__(__DI__)));
+    void * exception_cleanup;
+    unsigned private_1 __attribute__((__mode__(__word__)));
+    unsigned private_2 __attribute__((__mode__(__word__)));
+} __attribute__((__aligned__));
+#endif
 
 // ----- following decl from libstdc++-v3/libsupc++/unwind-cxx.h
 
@@ -98,6 +131,8 @@ extern "C" void __cxa_throw(
 }
 #endif
 
+#endif
+
 extern "C" void privateSnippetExecutorGeneral();
 extern "C" void privateSnippetExecutorVoid();
 extern "C" void privateSnippetExecutorHyper();
@@ -108,12 +143,17 @@ extern "C" void privateSnippetExecutorCl
 namespace CPPU_CURRENT_NAMESPACE
 {
 
+void dummy_can_throw_anything( char const * );
+
 void raiseException(
     uno_Any * pUnoExc, uno_Mapping * pUno2Cpp );
 
 void fillUnoException(
+#ifdef __clang__
+    __cxxabiv1::__cxa_exception * header, uno_Any *, uno_Mapping * pCpp2Uno );
+#else
     __cxa_exception * header, uno_Any *, uno_Mapping * pCpp2Uno );
-
+#endif
 }
 
 namespace x86
