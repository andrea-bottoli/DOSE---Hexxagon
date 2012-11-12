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

OBJECTS = big_file_C9_c.obj 

OLDOBJECTS =  da290.obj da290d.obj da290f.obj da289.obj da289d.obj da289f.obj da292.obj \
	da292d.obj da292f.obj da287.obj da287d.obj da287f.obj da288.obj da288d.obj da288f.obj \
	ti286.obj ti286d.obj ti286f.obj ti285.obj ti285d.obj ti285f.obj ti284.obj ti284d.obj \
	ti284f.obj ev280.obj ev280d.obj ev280f.obj ev282.obj ev282d.obj ev282f.obj ev296.obj \
	ev296d.obj ev296f.obj ev294.obj ev294d.obj ev294f.obj ev295.obj ev295d.obj ev295f.obj \
	we293.obj we293d.obj we293f.obj co291.obj co291d.obj co291f.obj ti283.obj ti283d.obj \
	ti283f.obj ev281.obj ev281d.obj ev281f.obj ev266.obj ev266d.obj ev266f.obj ev279.obj \
	ev279d.obj ev279f.obj uc278.obj uc278d.obj uc278f.obj uc277.obj uc277d.obj uc277f.obj \
	we276.obj we276d.obj we276f.obj we275.obj we275d.obj we275f.obj we274.obj we274d.obj \
	we274f.obj ev268.obj ev268d.obj ev268f.obj ev272.obj ev272d.obj ev272f.obj we271.obj \
	we271d.obj we271f.obj we270.obj we270d.obj we270f.obj we269.obj we269d.obj we269f.obj \
	ev267.obj ev267d.obj ev267f.obj ev265.obj ev265d.obj ev265f.obj ev264.obj ev264d.obj \
	ev264f.obj ev273.obj ev273d.obj ev273f.obj 

all::  Cobj9.lib

Cobj9.lib: $(OBJECTS) Makefile
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

