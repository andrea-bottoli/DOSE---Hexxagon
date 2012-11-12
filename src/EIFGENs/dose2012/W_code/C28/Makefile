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

OBJECTS = big_file_C28_c.obj 

OLDOBJECTS =  ev893.obj ev893d.obj ev893f.obj ev912.obj ev912d.obj ev912f.obj ev895.obj \
	ev895d.obj ev895f.obj ev911.obj ev911d.obj ev911f.obj ev891.obj ev891d.obj ev891f.obj \
	ev909.obj ev909d.obj ev909f.obj ev910.obj ev910d.obj ev910f.obj ev907.obj ev907d.obj \
	ev907f.obj ev908.obj ev908d.obj ev908f.obj ev892.obj ev892d.obj ev892f.obj ev905.obj \
	ev905d.obj ev905f.obj ev906.obj ev906d.obj ev906f.obj ev904.obj ev904d.obj ev904f.obj \
	ev903.obj ev903d.obj ev903f.obj ev921.obj ev921d.obj ev921f.obj ev920.obj ev920d.obj \
	ev920f.obj ev919.obj ev919d.obj ev919f.obj ev902.obj ev902d.obj ev902f.obj ev901.obj \
	ev901d.obj ev901f.obj ev923.obj ev923d.obj ev923f.obj ev922.obj ev922d.obj ev922f.obj \
	ev914.obj ev914d.obj ev914f.obj ev900.obj ev900d.obj ev900f.obj ev899.obj ev899d.obj \
	ev899f.obj ev918.obj ev918d.obj ev918f.obj ev898.obj ev898d.obj ev898f.obj ev913.obj \
	ev913d.obj ev913f.obj ev897.obj ev897d.obj ev897f.obj ev896.obj ev896d.obj ev896f.obj \
	ev917.obj ev917d.obj ev917f.obj ev916.obj ev916d.obj ev916f.obj ev894.obj ev894d.obj \
	ev894f.obj ev915.obj ev915d.obj ev915f.obj 

all::  Cobj28.lib

Cobj28.lib: $(OBJECTS) Makefile
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

