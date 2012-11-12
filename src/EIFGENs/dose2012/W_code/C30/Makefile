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

OBJECTS = big_file_C30_c.obj 

OLDOBJECTS =  ev986.obj ev986d.obj ev986f.obj ev959.obj ev959d.obj ev959f.obj ev982.obj \
	ev982d.obj ev982f.obj ev973.obj ev973d.obj ev973f.obj ev984.obj ev984d.obj ev984f.obj \
	ev983.obj ev983d.obj ev983f.obj ev957.obj ev957d.obj ev957f.obj ev963.obj ev963d.obj \
	ev963f.obj ev962.obj ev962d.obj ev962f.obj ev980.obj ev980d.obj ev980f.obj ev972.obj \
	ev972d.obj ev972f.obj ev976.obj ev976d.obj ev976f.obj ev961.obj ev961d.obj ev961f.obj \
	ev966.obj ev966d.obj ev966f.obj ev989.obj ev989d.obj ev989f.obj ev981.obj ev981d.obj \
	ev981f.obj ev965.obj ev965d.obj ev965f.obj ev960.obj ev960d.obj ev960f.obj ev971.obj \
	ev971d.obj ev971f.obj ev985.obj ev985d.obj ev985f.obj ev974.obj ev974d.obj ev974f.obj \
	ev979.obj ev979d.obj ev979f.obj ev968.obj ev968d.obj ev968f.obj ev969.obj ev969d.obj \
	ev969f.obj ev987.obj ev987d.obj ev987f.obj ev967.obj ev967d.obj ev967f.obj ev977.obj \
	ev977d.obj ev977f.obj ev964.obj ev964d.obj ev964f.obj ev970.obj ev970d.obj ev970f.obj \
	ev958.obj ev958d.obj ev958f.obj ev978.obj ev978d.obj ev978f.obj ev988.obj ev988d.obj \
	ev988f.obj ev975.obj ev975d.obj ev975f.obj 

all::  Cobj30.lib

Cobj30.lib: $(OBJECTS) Makefile
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

