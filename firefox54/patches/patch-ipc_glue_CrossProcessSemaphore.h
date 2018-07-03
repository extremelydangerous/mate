$NetBSD$

--- ipc/glue/CrossProcessSemaphore.h.orig	2017-06-15 20:51:57.000000000 +0000
+++ ipc/glue/CrossProcessSemaphore.h
@@ -91,7 +91,13 @@ private:
   HANDLE mSemaphore;
 #elif !defined(OS_MACOSX)
   RefPtr<mozilla::ipc::SharedMemoryBasic> mSharedBuffer;
+#if defined(__NetBSD__)
+  pthread_mutex_t* mMutex;
+  pthread_cond_t* mNotZero;
+  uint32_t* mValue;
+#else
   sem_t* mSemaphore;
+#endif
   mozilla::Atomic<int32_t>* mRefCount;
 #endif
 };
