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

OBJECTS = big_file_C35_c.obj 

OLDOBJECTS =  ev1151.obj ev1151d.obj ev1151f.obj ev1149.obj ev1149d.obj ev1149f.obj ev1133.obj \
	ev1133d.obj ev1133f.obj ev1147.obj ev1147d.obj ev1147f.obj we1146.obj we1146d.obj \
	we1146f.obj we1131.obj we1131d.obj we1131f.obj ev1143.obj ev1143d.obj ev1143f.obj \
	we1145.obj we1145d.obj we1145f.obj ev1148.obj ev1148d.obj ev1148f.obj we1132.obj \
	we1132d.obj we1132f.obj ev1152.obj ev1152d.obj ev1152f.obj we1122.obj we1122d.obj \
	we1122f.obj we1130.obj we1130d.obj we1130f.obj we1142.obj we1142d.obj we1142f.obj \
	we1137.obj we1137d.obj we1137f.obj ev1128.obj ev1128d.obj ev1128f.obj we1144.obj \
	we1144d.obj we1144f.obj ev1154.obj ev1154d.obj ev1154f.obj we1125.obj we1125d.obj \
	we1125f.obj we1138.obj we1138d.obj we1138f.obj we1129.obj we1129d.obj we1129f.obj \
	we1126.obj we1126d.obj we1126f.obj we1136.obj we1136d.obj we1136f.obj ev1150.obj \
	ev1150d.obj ev1150f.obj we1134.obj we1134d.obj we1134f.obj we1127.obj we1127d.obj \
	we1127f.obj we1141.obj we1141d.obj we1141f.obj we1124.obj we1124d.obj we1124f.obj \
	we1123.obj we1123d.obj we1123f.obj ev1153.obj ev1153d.obj ev1153f.obj we1135.obj \
	we1135d.obj we1135f.obj ev1140.obj ev1140d.obj ev1140f.obj we1139.obj we1139d.obj \
	we1139f.obj 

all::  Cobj35.lib

Cobj35.lib: $(OBJECTS) Makefile
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

