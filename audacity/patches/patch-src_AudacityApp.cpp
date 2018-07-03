$NetBSD$

--- src/AudacityApp.cpp.orig	2016-01-13 14:31:23.000000000 +0000
+++ src/AudacityApp.cpp
@@ -1182,7 +1182,7 @@ bool AudacityApp::OnInit()
    wxString home = wxGetHomeDir();
 
    /* On Unix systems, the default temp dir is in /var/tmp. */
-   defaultTempDir.Printf(wxT("/var/tmp/audacity-%s"), wxGetUserId().c_str());
+   defaultTempDir.Printf(wxT("%s/.audacity1.2-%s"), home.c_str(), wxGetUserId().c_str());
 
    wxString pathVar = wxGetenv(wxT("AUDACITY_PATH"));
    if (pathVar != wxT(""))
