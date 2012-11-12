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

OBJECTS = big_file_C21_c.obj 

OLDOBJECTS =  we692.obj we692d.obj we692f.obj we691.obj we691d.obj we691f.obj we690.obj \
	we690d.obj we690f.obj we689.obj we689d.obj we689f.obj we688.obj we688d.obj we688f.obj \
	we687.obj we687d.obj we687f.obj we686.obj we686d.obj we686f.obj we685.obj we685d.obj \
	we685f.obj we684.obj we684d.obj we684f.obj we683.obj we683d.obj we683f.obj we682.obj \
	we682d.obj we682f.obj we681.obj we681d.obj we681f.obj we680.obj we680d.obj we680f.obj \
	we679.obj we679d.obj we679f.obj we678.obj we678d.obj we678f.obj we677.obj we677d.obj \
	we677f.obj we676.obj we676d.obj we676f.obj we675.obj we675d.obj we675f.obj we674.obj \
	we674d.obj we674f.obj we673.obj we673d.obj we673f.obj we672.obj we672d.obj we672f.obj \
	we671.obj we671d.obj we671f.obj we670.obj we670d.obj we670f.obj we669.obj we669d.obj \
	we669f.obj we668.obj we668d.obj we668f.obj we667.obj we667d.obj we667f.obj we666.obj \
	we666d.obj we666f.obj we665.obj we665d.obj we665f.obj we664.obj we664d.obj we664f.obj \
	we663.obj we663d.obj we663f.obj we662.obj we662d.obj we662f.obj we661.obj we661d.obj \
	we661f.obj we660.obj we660d.obj we660f.obj 

all::  Cobj21.lib

Cobj21.lib: $(OBJECTS) Makefile
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

