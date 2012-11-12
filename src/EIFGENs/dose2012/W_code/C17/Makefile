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

OBJECTS = big_file_C17_c.obj 

OLDOBJECTS =  tt552.obj tt552d.obj tt552f.obj la542.obj la542d.obj la542f.obj du551.obj \
	du551d.obj du551f.obj g2550.obj g2550d.obj g2550f.obj b8549.obj b8549d.obj b8549f.obj \
	ca548.obj ca548d.obj ca548f.obj hi547.obj hi547d.obj hi547f.obj hx546.obj hx546d.obj \
	hx546f.obj in545.obj in545d.obj in545f.obj xx544.obj xx544d.obj xx544f.obj ev540.obj \
	ev540d.obj ev540f.obj ev539.obj ev539d.obj ev539f.obj ev538.obj ev538d.obj ev538f.obj \
	ev537.obj ev537d.obj ev537f.obj kl555.obj kl555d.obj kl555f.obj ev536.obj ev536d.obj \
	ev536f.obj we553.obj we553d.obj we553f.obj ev535.obj ev535d.obj ev535f.obj ev534.obj \
	ev534d.obj ev534f.obj ev533.obj ev533d.obj ev533f.obj ev532.obj ev532d.obj ev532f.obj \
	ev531.obj ev531d.obj ev531f.obj kl557.obj kl557d.obj kl557f.obj uc556.obj uc556d.obj \
	uc556f.obj we554.obj we554d.obj we554f.obj ev530.obj ev530d.obj ev530f.obj ev529.obj \
	ev529d.obj ev529f.obj kl541.obj kl541d.obj kl541f.obj ev528.obj ev528d.obj ev528f.obj \
	ki559.obj ki559d.obj ki559f.obj ki560.obj ki560d.obj ki560f.obj ki558.obj ki558d.obj \
	ki558f.obj do543.obj do543d.obj do543f.obj 

all::  Cobj17.lib

Cobj17.lib: $(OBJECTS) Makefile
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

