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

OBJECTS = big_file_C37_c.obj 

OLDOBJECTS =  it1215.obj it1215d.obj it1215f.obj pr1220.obj pr1220d.obj pr1220f.obj kl1217.obj \
	kl1217d.obj kl1217f.obj ki1216.obj ki1216d.obj ki1216f.obj ev1195.obj ev1195d.obj \
	ev1195f.obj ev1209.obj ev1209d.obj ev1209f.obj ev1207.obj ev1207d.obj ev1207f.obj \
	ev1194.obj ev1194d.obj ev1194f.obj ev1188.obj ev1188d.obj ev1188f.obj ev1189.obj \
	ev1189d.obj ev1189f.obj ev1208.obj ev1208d.obj ev1208f.obj ev1214.obj ev1214d.obj \
	ev1214f.obj ev1201.obj ev1201d.obj ev1201f.obj ev1193.obj ev1193d.obj ev1193f.obj \
	ev1210.obj ev1210d.obj ev1210f.obj ev1205.obj ev1205d.obj ev1205f.obj ev1192.obj \
	ev1192d.obj ev1192f.obj ev1191.obj ev1191d.obj ev1191f.obj ev1204.obj ev1204d.obj \
	ev1204f.obj ev1197.obj ev1197d.obj ev1197f.obj ev1198.obj ev1198d.obj ev1198f.obj \
	ev1196.obj ev1196d.obj ev1196f.obj ev1202.obj ev1202d.obj ev1202f.obj ev1190.obj \
	ev1190d.obj ev1190f.obj ev1206.obj ev1206d.obj ev1206f.obj uc1218.obj uc1218d.obj \
	uc1218f.obj ev1200.obj ev1200d.obj ev1200f.obj ev1213.obj ev1213d.obj ev1213f.obj \
	ev1212.obj ev1212d.obj ev1212f.obj ev1211.obj ev1211d.obj ev1211f.obj ev1203.obj \
	ev1203d.obj ev1203f.obj ev1199.obj ev1199d.obj ev1199f.obj uc1219.obj uc1219d.obj \
	uc1219f.obj 

all::  Cobj37.lib

Cobj37.lib: $(OBJECTS) Makefile
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

