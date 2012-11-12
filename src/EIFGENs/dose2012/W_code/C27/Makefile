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

OBJECTS = big_file_C27_c.obj 

OLDOBJECTS =  ev870.obj ev870d.obj ev870f.obj ev861.obj ev861d.obj ev861f.obj ev868.obj \
	ev868d.obj ev868f.obj ev890.obj ev890d.obj ev890f.obj ev860.obj ev860d.obj ev860f.obj \
	ev889.obj ev889d.obj ev889f.obj ev864.obj ev864d.obj ev864f.obj ev877.obj ev877d.obj \
	ev877f.obj ev882.obj ev882d.obj ev882f.obj ev888.obj ev888d.obj ev888f.obj ev859.obj \
	ev859d.obj ev859f.obj ev873.obj ev873d.obj ev873f.obj ev862.obj ev862d.obj ev862f.obj \
	ev871.obj ev871d.obj ev871f.obj ev869.obj ev869d.obj ev869f.obj ev865.obj ev865d.obj \
	ev865f.obj ev872.obj ev872d.obj ev872f.obj ev880.obj ev880d.obj ev880f.obj ev879.obj \
	ev879d.obj ev879f.obj ev867.obj ev867d.obj ev867f.obj ev886.obj ev886d.obj ev886f.obj \
	ev885.obj ev885d.obj ev885f.obj ev881.obj ev881d.obj ev881f.obj ev887.obj ev887d.obj \
	ev887f.obj ev884.obj ev884d.obj ev884f.obj ev858.obj ev858d.obj ev858f.obj ev876.obj \
	ev876d.obj ev876f.obj ev875.obj ev875d.obj ev875f.obj ev874.obj ev874d.obj ev874f.obj \
	ev878.obj ev878d.obj ev878f.obj ev866.obj ev866d.obj ev866f.obj ev883.obj ev883d.obj \
	ev883f.obj ev863.obj ev863d.obj ev863f.obj 

all::  Cobj27.lib

Cobj27.lib: $(OBJECTS) Makefile
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

