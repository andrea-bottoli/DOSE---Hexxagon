INCLUDE_PATH =  -I"C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\library\process\classic\windows\include" -I"C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\library\wel\spec\windows\include" -I"C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\library\vision2\spec\include"
SHELL = \bin\sh
CC = cl
CPP = cl
CFLAGS = -Od -Zi -MT -w -nologo -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_CRT_SECURE_NO_DEPRECATE -D_UNICODE -DUNICODE  -DEIF_THREADS  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\studio\spec\win64\include" -I. $(INCLUDE_PATH)
CPPFLAGS = -Od -Zi -MT -w -nologo -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_CRT_SECURE_NO_DEPRECATE -D_UNICODE -DUNICODE  -DEIF_THREADS  -DWORKBENCH -I"C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\studio\spec\win64\include" -I. $(INCLUDE_PATH)
LDFLAGS = -STACK:5000000 -NODEFAULTLIB:libc
CCLDFLAGS = -STACK:5000000 -NODEFAULTLIB:libc  -SUBSYSTEM:WINDOWS
LDSHAREDFLAGS =  -dll -incremental:no -NODEFAULTLIB:libc
EIFLIB = "C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\studio\spec\win64\lib\msc\mtwkbench.lib"
EIFTEMPLATES = C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\studio\config\win64\templates
LIBS = 
MAKE = nmake -s -nologo
AR = 
LD = 
MKDEP =   --
MV = copy
CP = copy
RANLIB = echo
RM = del
FILE_EXIST = if exist
RMDIR = rd
X2C = "C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\studio\spec\win64\bin\x2c.exe"
SHAREDLINK = link
SHAREDLIBS = USER32.lib WS2_32.lib ADVAPI32.lib GDI32.lib SHELL32.lib MSIMG32.lib \
	COMDLG32.lib UUID.lib OLE32.lib OLEAUT32.lib COMCTL32.lib MPR.LIB SHLWAPI.LIB WINSPOOL.LIB 
SHARED_SUFFIX = .dll
COMMAND_MAKEFILE = 
START_TEST = if not exist finished 
END_TEST =  
CREATE_TEST = echo "finished" >> finished 
SYSTEM_IN_DYNAMIC_LIB = dose2012.dll 

.SUFFIXES:.cpp .obj 

.c.obj:
	$(CC) $(CFLAGS) -c $<

.cpp.obj:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C39_c.obj 

OLDOBJECTS =  fu1282.obj fu1282d.obj pr1257.obj pr1257d.obj pr1257f.obj ty1276.obj ty1276d.obj \
	ty1277.obj ty1277d.obj ty1278.obj ty1278d.obj re1259.obj re1259d.obj li1263.obj \
	li1263d.obj in1258.obj in1258d.obj to1255.obj to1255d.obj to1255f.obj ce1256.obj \
	ce1256d.obj ce1256f.obj ha1271.obj ha1271d.obj ha1271f.obj it1262.obj it1262d.obj \
	it1261.obj it1261d.obj in1260.obj in1260d.obj cu1266.obj cu1266d.obj tr1264.obj \
	tr1264d.obj bo1254.obj bo1254d.obj bo1254f.obj ta1270.obj ta1270d.obj ta1274.obj \
	ta1274d.obj ha1275.obj ha1275d.obj ha1275f.obj ta1272.obj ta1272d.obj ta1272f.obj \
	co1269.obj co1269d.obj ac1267.obj ac1267d.obj co1265.obj co1265d.obj ba1268.obj \
	ba1268d.obj ta1273.obj ta1273d.obj ta1273f.obj ev1285.obj ev1285d.obj ev1285f.obj \
	di1281.obj di1281d.obj di1281f.obj ev1284.obj ev1284d.obj ev1284f.obj ev1286.obj \
	ev1286d.obj ev1286f.obj ev1283.obj ev1283d.obj ev1283f.obj ar1279.obj ar1279d.obj \
	ar1279f.obj st1280.obj st1280d.obj st1280f.obj 

all::  Cobj39.lib

Cobj39.lib: $(OBJECTS) Makefile
	if exist $@ $(RM) $@
	lib -nologo -OUT:$@ $(OBJECTS)
	$(CREATE_TEST)
	$(RM) $(OBJECTS)


clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

