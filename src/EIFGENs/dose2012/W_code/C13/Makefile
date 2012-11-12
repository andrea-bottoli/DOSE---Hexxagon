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

OBJECTS = big_file_C13_c.obj 

OLDOBJECTS =  ex416.obj ex416d.obj ex416f.obj in413.obj in413d.obj in413f.obj it411.obj \
	it411d.obj it411f.obj re428.obj re428d.obj re428f.obj re427.obj re427d.obj re427f.obj \
	ex426.obj ex426d.obj ex426f.obj co424.obj co424d.obj co424f.obj op423.obj op423d.obj \
	op423f.obj de417.obj de417d.obj de417f.obj fl420.obj fl420d.obj fl420f.obj op422.obj \
	op422d.obj op422f.obj ex415.obj ex415d.obj ex415f.obj da405.obj da405d.obj da405f.obj \
	so412.obj so412d.obj so412f.obj re410.obj re410d.obj re410f.obj co406.obj co406d.obj \
	co406f.obj ob425.obj ob425d.obj ob425f.obj op421.obj op421d.obj op421f.obj ha419.obj \
	ha419d.obj ha419f.obj ev409.obj ev409d.obj ev409f.obj da404.obj da404d.obj da404f.obj \
	ti403.obj ti403d.obj ti403f.obj ab408.obj ab408d.obj ab408f.obj du402.obj du402d.obj \
	du402f.obj ne414.obj ne414d.obj ne414f.obj pa401.obj pa401d.obj pa401f.obj ma418.obj \
	ma418d.obj ma418f.obj ev400.obj ev400d.obj ev400f.obj ev397.obj ev397d.obj ev397f.obj \
	ev399.obj ev399d.obj ev399f.obj gc396.obj gc396d.obj gc396f.obj ev398.obj ev398d.obj \
	ev398f.obj kl407.obj kl407d.obj kl407f.obj 

all::  Cobj13.lib

Cobj13.lib: $(OBJECTS) Makefile
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

