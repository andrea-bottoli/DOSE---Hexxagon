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

OBJECTS = big_file_C2_c.obj 

OLDOBJECTS =  tt65.obj tt65d.obj tt65f.obj ev64.obj ev64d.obj ev64f.obj kl63.obj kl63d.obj \
	kl63f.obj ev62.obj ev62d.obj ev62f.obj we61.obj we61d.obj we61f.obj we60.obj we60d.obj \
	we60f.obj we59.obj we59d.obj we59f.obj we58.obj we58d.obj we58f.obj we57.obj we57d.obj \
	we57f.obj we56.obj we56d.obj we56f.obj we55.obj we55d.obj we55f.obj we54.obj we54d.obj \
	we54f.obj we53.obj we53d.obj we53f.obj we52.obj we52d.obj we52f.obj we51.obj we51d.obj \
	we51f.obj we50.obj we50d.obj we50f.obj we49.obj we49d.obj we49f.obj we48.obj we48d.obj \
	we48f.obj ev47.obj ev47d.obj ev47f.obj we46.obj we46d.obj we46f.obj we45.obj we45d.obj \
	we45f.obj we44.obj we44d.obj we44f.obj we43.obj we43d.obj we43f.obj we42.obj we42d.obj \
	we42f.obj we41.obj we41d.obj we41f.obj we40.obj we40d.obj we40f.obj we39.obj we39d.obj \
	we39f.obj we38.obj we38d.obj we38f.obj we37.obj we37d.obj we37f.obj we36.obj we36d.obj \
	we36f.obj we35.obj we35d.obj we35f.obj we34.obj we34d.obj we34f.obj hx33.obj hx33d.obj \
	hx33f.obj 

all::  Cobj2.lib

Cobj2.lib: $(OBJECTS) Makefile
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

