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

OBJECTS = big_file_C10_c.obj 

OLDOBJECTS =  ev329.obj ev329d.obj ev329f.obj we328.obj we328d.obj we328f.obj we327.obj \
	we327d.obj we327f.obj we326.obj we326d.obj we326f.obj we325.obj we325d.obj we325f.obj \
	ev323.obj ev323d.obj ev323f.obj th319.obj th319d.obj th319f.obj ev318.obj ev318d.obj \
	ev318f.obj ev317.obj ev317d.obj ev317f.obj ev315.obj ev315d.obj ev315f.obj ev313.obj \
	ev313d.obj ev313f.obj we312.obj we312d.obj we312f.obj ev303.obj ev303d.obj ev303f.obj \
	ev314.obj ev314d.obj ev314f.obj ev324.obj ev324d.obj ev324f.obj we311.obj we311d.obj \
	we311f.obj we310.obj we310d.obj we310f.obj ev316.obj ev316d.obj ev316f.obj ev309.obj \
	ev309d.obj ev309f.obj we308.obj we308d.obj we308f.obj ev307.obj ev307d.obj ev307f.obj \
	we306.obj we306d.obj we306f.obj ev299.obj ev299d.obj ev299f.obj we305.obj we305d.obj \
	we305f.obj we304.obj we304d.obj we304f.obj ev302.obj ev302d.obj ev302f.obj we301.obj \
	we301d.obj we301f.obj we300.obj we300d.obj we300f.obj ev298.obj ev298d.obj ev298f.obj \
	ev297.obj ev297d.obj ev297f.obj th321.obj th321d.obj th321f.obj pr322.obj pr322d.obj \
	pr322f.obj th320.obj th320d.obj th320f.obj 

all::  Cobj10.lib

Cobj10.lib: $(OBJECTS) Makefile
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

