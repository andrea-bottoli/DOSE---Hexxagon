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

OBJECTS = big_file_C34_c.obj 

OLDOBJECTS =  we1107.obj we1107d.obj we1107f.obj ev1120.obj ev1120d.obj ev1120f.obj we1101.obj \
	we1101d.obj we1101f.obj we1100.obj we1100d.obj we1100f.obj we1112.obj we1112d.obj \
	we1112f.obj ev1105.obj ev1105d.obj ev1105f.obj ev1116.obj ev1116d.obj ev1116f.obj \
	we1093.obj we1093d.obj we1093f.obj we1099.obj we1099d.obj we1099f.obj we1117.obj \
	we1117d.obj we1117f.obj ev1119.obj ev1119d.obj ev1119f.obj we1108.obj we1108d.obj \
	we1108f.obj we1098.obj we1098d.obj we1098f.obj ev1106.obj ev1106d.obj ev1106f.obj \
	we1121.obj we1121d.obj we1121f.obj ev1115.obj ev1115d.obj ev1115f.obj ev1091.obj \
	ev1091d.obj ev1091f.obj ev1114.obj ev1114d.obj ev1114f.obj we1104.obj we1104d.obj \
	we1104f.obj we1097.obj we1097d.obj we1097f.obj we1113.obj we1113d.obj we1113f.obj \
	ev1118.obj ev1118d.obj ev1118f.obj we1109.obj we1109d.obj we1109f.obj we1096.obj \
	we1096d.obj we1096f.obj ev1092.obj ev1092d.obj ev1092f.obj we1110.obj we1110d.obj \
	we1110f.obj we1111.obj we1111d.obj we1111f.obj we1103.obj we1103d.obj we1103f.obj \
	we1095.obj we1095d.obj we1095f.obj we1094.obj we1094d.obj we1094f.obj we1102.obj \
	we1102d.obj we1102f.obj we1090.obj we1090d.obj we1090f.obj we1089.obj we1089d.obj \
	we1089f.obj 

all::  Cobj34.lib

Cobj34.lib: $(OBJECTS) Makefile
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

