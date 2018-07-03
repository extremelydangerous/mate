$NetBSD$

--- glib/gthread-posix.c.orig	2018-01-08 20:00:42.000000000 +0000
+++ glib/gthread-posix.c
@@ -653,6 +653,7 @@ g_cond_impl_new (void)
 #elif defined (HAVE_PTHREAD_CONDATTR_SETCLOCK) && defined (CLOCK_MONOTONIC)
   if G_UNLIKELY ((status = pthread_condattr_setclock (&attr, CLOCK_MONOTONIC)) != 0)
     g_thread_abort (status, "pthread_condattr_setclock");
+#elif defined (CLOCK_MONOTONIC)
 #else
 #error Cannot support GCond on your platform.
 #endif
@@ -901,6 +902,21 @@ g_cond_wait_until (GCond  *cond,
     if ((status = pthread_cond_timedwait (g_cond_get_impl (cond), g_mutex_get_impl (mutex), &ts)) == 0)
       return TRUE;
   }
+#elif defined (CLOCK_MONOTONIC)
+  {
+    gint64 monotonic_now = g_get_monotonic_time ();
+    gint64 real_end_time;
+
+    if (end_time <= monotonic_now)
+      return FALSE;
+
+    real_end_time = g_get_real_time () + (end_time - monotonic_now);
+
+    ts.tv_sec = real_end_time / 1000000;
+    ts.tv_nsec = (real_end_time % 1000000) * 1000;
+    if ((status = pthread_cond_timedwait (g_cond_get_impl (cond), g_mutex_get_impl (mutex), &ts)) == 0)
+      return TRUE;
+  }
 #else
 #error Cannot support GCond on your platform.
 #endif
@@ -1171,7 +1187,7 @@ g_system_thread_new (GThreadFunc   threa
 
   posix_check_cmd (pthread_attr_destroy (&attr));
 
-  if (ret == EAGAIN)
+  if (ret)
     {
       g_set_error (error, G_THREAD_ERROR, G_THREAD_ERROR_AGAIN, 
                    "Error creating thread: %s", g_strerror (ret));
