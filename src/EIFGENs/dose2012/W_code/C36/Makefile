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

OBJECTS = big_file_C36_c.obj 

OLDOBJECTS =  ev1185.obj ev1185d.obj ev1185f.obj ev1172.obj ev1172d.obj ev1172f.obj ev1163.obj \
	ev1163d.obj ev1163f.obj ev1176.obj ev1176d.obj ev1176f.obj ev1165.obj ev1165d.obj \
	ev1165f.obj ev1183.obj ev1183d.obj ev1183f.obj ev1162.obj ev1162d.obj ev1162f.obj \
	ev1164.obj ev1164d.obj ev1164f.obj ev1179.obj ev1179d.obj ev1179f.obj ev1174.obj \
	ev1174d.obj ev1174f.obj ev1178.obj ev1178d.obj ev1178f.obj ev1166.obj ev1166d.obj \
	ev1166f.obj ev1167.obj ev1167d.obj ev1167f.obj ev1169.obj ev1169d.obj ev1169f.obj \
	ev1160.obj ev1160d.obj ev1160f.obj ev1161.obj ev1161d.obj ev1161f.obj ev1182.obj \
	ev1182d.obj ev1182f.obj ev1181.obj ev1181d.obj ev1181f.obj ev1180.obj ev1180d.obj \
	ev1180f.obj ev1175.obj ev1175d.obj ev1175f.obj ev1187.obj ev1187d.obj ev1187f.obj \
	ev1168.obj ev1168d.obj ev1168f.obj ev1171.obj ev1171d.obj ev1171f.obj ev1186.obj \
	ev1186d.obj ev1186f.obj ev1177.obj ev1177d.obj ev1177f.obj ev1173.obj ev1173d.obj \
	ev1173f.obj ev1156.obj ev1156d.obj ev1156f.obj ev1170.obj ev1170d.obj ev1170f.obj \
	ev1159.obj ev1159d.obj ev1159f.obj ev1155.obj ev1155d.obj ev1155f.obj ev1158.obj \
	ev1158d.obj ev1158f.obj ev1157.obj ev1157d.obj ev1157f.obj ev1184.obj ev1184d.obj \
	ev1184f.obj 

all::  Cobj36.lib

Cobj36.lib: $(OBJECTS) Makefile
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

