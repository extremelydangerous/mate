$NetBSD$

--- gmodule/gmodule-dyld.c.orig	2017-07-13 23:03:39.000000000 +0000
+++ gmodule/gmodule-dyld.c
@@ -118,7 +118,13 @@ _g_module_symbol (gpointer     handle,
       if (NSIsSymbolNameDefined (symbol_name))
 	sym = NSLookupAndBindSymbol (symbol_name);
       else
-	sym = NULL;
+	{
+	  GModule *mod;
+	  for (mod = modules, sym = NULL; mod && !sym; mod = mod->next)
+	    {
+	      sym = NSLookupSymbolInModule (mod->handle, symbol_name);
+	    }
+	}
     }
   else
     sym = NSLookupSymbolInModule (handle, symbol_name);
