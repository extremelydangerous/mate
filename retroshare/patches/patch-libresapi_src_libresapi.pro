--- libresapi/src/libresapi.pro.orig	2017-10-20 20:57:46 UTC
+++ libresapi/src/libresapi.pro	
--- libresapi/src/libresapi.pro.orig	2018-03-13 19:25:38.000000000 +0000
+++ libresapi/src/libresapi.pro
@@ -159,6 +159,29 @@ libresapihttpserver {
 		api/ApiServerMHD.h
 }
 
+netbsd-* {
+	JSON_SOURCES = api/json.cpp
+	json.name = json
+	json.input = JSON_SOURCES
+	json.variable_out = OBJECTS
+	json.dependency_type = TYPE_C
+	json.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_IN_BASE}$${first(QMAKE_EXT_OBJ)}
+	json.commands = $${QMAKE_CXX} $(CXXFLAGS) -std=gnu++98 $(INCPATH) -c ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
+	QMAKE_EXTRA_COMPILERS += json
+}
+
+freebsd-clang {
+	JSON_SOURCES = api/json.cpp
+	json.name = json
+	json.input = JSON_SOURCES
+	json.variable_out = OBJECTS
+	json.dependency_type = TYPE_C
+	json.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_IN_BASE}$${first(QMAKE_EXT_OBJ)}
+	json.commands = $${QMAKE_CXX} $(CXXFLAGS) -std=gnu++98 $(INCPATH) -c ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
+	QMAKE_EXTRA_COMPILERS += json
+}
+
+
 SOURCES += \
 	api/ApiServer.cpp \
 	api/json.cpp \
