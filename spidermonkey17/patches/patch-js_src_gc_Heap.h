$NetBSD$

--- js/src/gc/Heap.h.orig	2018-03-06 04:56:25.439301175 +0000
+++ js/src/gc/Heap.h
@@ -108,7 +108,7 @@ struct Cell
  * Bug 692267: Move page size definition to gc/Memory.h and include it
  *             directly once jsgc.h is no longer an installed header.
  */
-#if defined(SOLARIS) && (defined(__sparc) || defined(__sparcv9))
+#if (defined(SOLARIS) && (defined(__sparc) || defined(__sparcv9))) || defined(__arm__)
 const size_t PageShift = 13;
 #else
 const size_t PageShift = 12;
