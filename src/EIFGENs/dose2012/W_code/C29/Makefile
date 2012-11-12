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

OBJECTS = big_file_C29_c.obj 

OLDOBJECTS =  ev953.obj ev953d.obj ev953f.obj ev947.obj ev947d.obj ev947f.obj ev946.obj \
	ev946d.obj ev946f.obj ev941.obj ev941d.obj ev941f.obj ev934.obj ev934d.obj ev934f.obj \
	ev935.obj ev935d.obj ev935f.obj ev943.obj ev943d.obj ev943f.obj ev936.obj ev936d.obj \
	ev936f.obj ev925.obj ev925d.obj ev925f.obj ev949.obj ev949d.obj ev949f.obj ev956.obj \
	ev956d.obj ev956f.obj ev948.obj ev948d.obj ev948f.obj ev955.obj ev955d.obj ev955f.obj \
	ev931.obj ev931d.obj ev931f.obj ev950.obj ev950d.obj ev950f.obj ev952.obj ev952d.obj \
	ev952f.obj ev937.obj ev937d.obj ev937f.obj ev933.obj ev933d.obj ev933f.obj ev940.obj \
	ev940d.obj ev940f.obj ev938.obj ev938d.obj ev938f.obj ev927.obj ev927d.obj ev927f.obj \
	ev924.obj ev924d.obj ev924f.obj ev939.obj ev939d.obj ev939f.obj ev954.obj ev954d.obj \
	ev954f.obj ev932.obj ev932d.obj ev932f.obj ev930.obj ev930d.obj ev930f.obj ev926.obj \
	ev926d.obj ev926f.obj ev942.obj ev942d.obj ev942f.obj ev945.obj ev945d.obj ev945f.obj \
	ev951.obj ev951d.obj ev951f.obj ev929.obj ev929d.obj ev929f.obj ev928.obj ev928d.obj \
	ev928f.obj ev944.obj ev944d.obj ev944f.obj 

all::  Cobj29.lib

Cobj29.lib: $(OBJECTS) Makefile
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

