--- plugins/VOIP/VOIP.pro.orig	2016-03-05 21:47:58 UTC
+++ plugins/VOIP/VOIP.pro
--- plugins/VOIP/VOIP.pro.orig	2018-03-13 19:25:38.000000000 +0000
+++ plugins/VOIP/VOIP.pro
@@ -26,6 +26,7 @@ linux-* {
 	PKGCONFIG += opencv
 } else {
 	LIBS += -lspeex -lspeexdsp -lavcodec -lavutil
+	LIBS += -lopencv_core -lopencv_highgui -lopencv_imgproc
 }
 
 #################################### Windows #####################################
