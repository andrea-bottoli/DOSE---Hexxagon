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

OBJECTS = big_file_C8_c.obj 

OLDOBJECTS =  is236.obj is236d.obj is236f.obj eq238.obj eq238d.obj eq238f.obj in231.obj \
	in231d.obj in231f.obj it237.obj it237d.obj it237f.obj ex235.obj ex235d.obj ex235f.obj \
	ev234.obj ev234d.obj ev234f.obj ev233.obj ev233d.obj ev233f.obj ad232.obj ad232d.obj \
	ad232f.obj eq239.obj eq239d.obj eq239f.obj ev261.obj ev261d.obj ev261f.obj ev254.obj \
	ev254d.obj ev254f.obj ev252.obj ev252d.obj ev252f.obj ev250.obj ev250d.obj ev250f.obj \
	ev247.obj ev247d.obj ev247f.obj ev263.obj ev263d.obj ev263f.obj uc262.obj uc262d.obj \
	uc262f.obj ev260.obj ev260d.obj ev260f.obj we259.obj we259d.obj we259f.obj we258.obj \
	we258d.obj we258f.obj ev242.obj ev242d.obj ev242f.obj we257.obj we257d.obj we257f.obj \
	we256.obj we256d.obj we256f.obj we255.obj we255d.obj we255f.obj ev253.obj ev253d.obj \
	ev253f.obj ev251.obj ev251d.obj ev251f.obj ev249.obj ev249d.obj ev249f.obj we248.obj \
	we248d.obj we248f.obj ev246.obj ev246d.obj ev246f.obj ki244.obj ki244d.obj ki244f.obj \
	we243.obj we243d.obj we243f.obj ev241.obj ev241d.obj ev241f.obj ki245.obj ki245d.obj \
	ki245f.obj we240.obj we240d.obj we240f.obj 

all::  Cobj8.lib

Cobj8.lib: $(OBJECTS) Makefile
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

