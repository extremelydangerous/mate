$NetBSD$

--- config-tests/cfgtest_QtPrintSupport.cpp.orig	2018-07-06 00:55:32.000000000 +0000
+++ config-tests/cfgtest_QtPrintSupport.cpp
@@ -17,7 +17,7 @@ int main(int argc, char **argv)
     QTextStream out(&outf);
 
     // The link test.
-    new QPrinter();
+//    new QPrinter();
 
     // Determine which features should be disabled.
 
