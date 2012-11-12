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

OBJECTS = big_file_C38_c.obj 

OLDOBJECTS =  sp1226.obj sp1226d.obj sp1226f.obj ar1233.obj ar1233d.obj ar1233f.obj ro1221.obj \
	ro1221d.obj ro1221f.obj fu1227.obj fu1227d.obj fu1227f.obj ty1223.obj ty1223d.obj \
	ty1224.obj ty1224d.obj ty1223f.obj ty1222.obj ty1222d.obj ty1225.obj ty1225d.obj \
	ty1222f.obj na1232.obj na1232d.obj na1232f.obj re1231.obj re1231d.obj re1231f.obj \
	ar1243.obj ar1243d.obj ar1243f.obj li1235.obj li1235d.obj li1235f.obj re1253.obj \
	re1253d.obj re1253f.obj in1241.obj in1241d.obj in1241f.obj li1245.obj li1245d.obj \
	li1245f.obj it1230.obj it1230d.obj it1230f.obj it1229.obj it1229d.obj it1229f.obj \
	in1228.obj in1228d.obj in1228f.obj se1247.obj se1247d.obj se1247f.obj dy1244.obj \
	dy1244d.obj dy1244f.obj cu1237.obj cu1237d.obj cu1237f.obj tr1236.obj tr1236d.obj \
	tr1236f.obj ta1242.obj ta1242d.obj ta1242f.obj un1252.obj un1252d.obj un1252f.obj \
	ch1246.obj ch1246d.obj ch1246f.obj co1240.obj co1240d.obj co1240f.obj ac1238.obj \
	ac1238d.obj ac1238f.obj bi1250.obj bi1250d.obj bi1250f.obj fi1248.obj fi1248d.obj \
	fi1248f.obj dy1251.obj dy1251d.obj dy1251f.obj co1234.obj co1234d.obj co1234f.obj \
	ba1239.obj ba1239d.obj ba1239f.obj bo1249.obj bo1249d.obj bo1249f.obj 

all::  Cobj38.lib

Cobj38.lib: $(OBJECTS) Makefile
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

