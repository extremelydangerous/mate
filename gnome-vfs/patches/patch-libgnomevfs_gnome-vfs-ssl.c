$NetBSD$

--- libgnomevfs/gnome-vfs-ssl.c.orig	2010-02-09 12:16:14.000000000 +0000
+++ libgnomevfs/gnome-vfs-ssl.c
@@ -314,21 +314,6 @@ gnome_vfs_ssl_create (GnomeVFSSSL **hand
 #endif
 }
 
-#ifdef HAVE_GNUTLS
-static const int protocol_priority[] = {GNUTLS_TLS1, GNUTLS_SSL3, 0};
-static const int cipher_priority[] = 
-	{GNUTLS_CIPHER_RIJNDAEL_128_CBC, GNUTLS_CIPHER_3DES_CBC,
-	 GNUTLS_CIPHER_RIJNDAEL_256_CBC, GNUTLS_CIPHER_ARCFOUR, 0};
-static const int comp_priority[] =
-	{GNUTLS_COMP_ZLIB, GNUTLS_COMP_NULL, 0};
-static const int kx_priority[] =
-	{GNUTLS_KX_DHE_RSA, GNUTLS_KX_RSA, GNUTLS_KX_DHE_DSS, 0};
-static const int mac_priority[] =
-	{GNUTLS_MAC_SHA, GNUTLS_MAC_MD5, 0};
-
-#endif
-
-
 /**
  * gnome_vfs_ssl_create_from_fd:
  * @handle_return: pointer to a #GnomeVFSSSL struct, which will
@@ -437,11 +422,7 @@ gnome_vfs_ssl_create_from_fd (GnomeVFSSS
 	gnutls_transport_set_ptr (ssl->private->tlsstate, 
 				  GINT_TO_POINTER (fd));
 
-	gnutls_protocol_set_priority (ssl->private->tlsstate, protocol_priority);
-	gnutls_cipher_set_priority (ssl->private->tlsstate, cipher_priority);
-	gnutls_compression_set_priority (ssl->private->tlsstate, comp_priority);
-	gnutls_kx_set_priority (ssl->private->tlsstate, kx_priority);
-	gnutls_mac_set_priority (ssl->private->tlsstate, mac_priority);
+	gnutls_set_default_priority (ssl->private->tlsstate);
 
 	gnutls_cred_set (ssl->private->tlsstate, GNUTLS_CRD_CERTIFICATE,
 			 ssl->private->xcred);
