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

OBJECTS = big_file_C40_c.obj 

OLDOBJECTS =  sp1305.obj sp1305d.obj ar1308.obj ar1308d.obj ty1306.obj ty1306d.obj eq1294.obj \
	eq1294d.obj eq1294f.obj na1307.obj na1307d.obj ar1309.obj ar1309d.obj re1316.obj \
	re1316d.obj to1318.obj to1318d.obj ce1299.obj ce1299d.obj ha1298.obj ha1298d.obj \
	li1311.obj li1311d.obj li1288.obj li1288d.obj li1288f.obj se1313.obj se1313d.obj \
	dy1310.obj dy1310d.obj bo1317.obj bo1317d.obj ha1319.obj ha1319d.obj un1302.obj \
	un1302d.obj ta1300.obj ta1300d.obj ch1312.obj ch1312d.obj li1291.obj li1291d.obj \
	li1291f.obj li1290.obj li1290d.obj li1290f.obj li1289.obj li1289d.obj li1289f.obj \
	ev1295.obj ev1295d.obj ev1295f.obj bi1314.obj bi1314d.obj fi1303.obj fi1303d.obj \
	dy1315.obj dy1315d.obj ta1301.obj ta1301d.obj ev1287.obj ev1287d.obj ev1287f.obj \
	bo1304.obj bo1304d.obj ac1296.obj ac1296d.obj ac1296f.obj qu1293.obj qu1293d.obj \
	qu1293f.obj in1297.obj in1297d.obj in1297f.obj li1292.obj li1292d.obj li1292f.obj 

all::  Cobj40.lib

Cobj40.lib: $(OBJECTS) Makefile
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

