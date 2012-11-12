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

OBJECTS = big_file_C19_c.obj 

OLDOBJECTS =  we610.obj we610d.obj we610f.obj ev597.obj ev597d.obj ev597f.obj we608.obj \
	we608d.obj we608f.obj we607.obj we607d.obj we607f.obj we621.obj we621d.obj we621f.obj \
	we618.obj we618d.obj we618f.obj we606.obj we606d.obj we606f.obj we620.obj we620d.obj \
	we620f.obj we609.obj we609d.obj we609f.obj we605.obj we605d.obj we605f.obj we596.obj \
	we596d.obj we596f.obj we623.obj we623d.obj we623f.obj we603.obj we603d.obj we603f.obj \
	we611.obj we611d.obj we611f.obj we617.obj we617d.obj we617f.obj we616.obj we616d.obj \
	we616f.obj we615.obj we615d.obj we615f.obj we614.obj we614d.obj we614f.obj we613.obj \
	we613d.obj we613f.obj we619.obj we619d.obj we619f.obj we612.obj we612d.obj we612f.obj \
	we601.obj we601d.obj we601f.obj we600.obj we600d.obj we600f.obj we622.obj we622d.obj \
	we622f.obj we604.obj we604d.obj we604f.obj we598.obj we598d.obj we598f.obj we599.obj \
	we599d.obj we599f.obj we595.obj we595d.obj we595f.obj we602.obj we602d.obj we602f.obj \
	we594.obj we594d.obj we594f.obj we626.obj we626d.obj we626f.obj we625.obj we625d.obj \
	we625f.obj we624.obj we624d.obj we624f.obj 

all::  Cobj19.lib

Cobj19.lib: $(OBJECTS) Makefile
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

