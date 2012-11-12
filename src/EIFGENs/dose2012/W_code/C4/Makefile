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

OBJECTS = big_file_C4_c.obj 

OLDOBJECTS =  da122.obj da122d.obj da122f.obj ev131.obj ev131d.obj ev131f.obj ev130.obj \
	ev130d.obj ev130f.obj ev129.obj ev129d.obj ev129f.obj ev128.obj ev128d.obj ev128f.obj \
	ev127.obj ev127d.obj ev127f.obj we126.obj we126d.obj we126f.obj we125.obj we125d.obj \
	we125f.obj we124.obj we124d.obj we124f.obj we123.obj we123d.obj we123f.obj da121.obj \
	da121d.obj da121f.obj pr119.obj pr119d.obj pr119f.obj we118.obj we118d.obj we118f.obj \
	ki117.obj ki117d.obj ki117f.obj we116.obj we116d.obj we116f.obj we115.obj we115d.obj \
	we115f.obj we114.obj we114d.obj we114f.obj we113.obj we113d.obj we113f.obj we112.obj \
	we112d.obj we112f.obj we111.obj we111d.obj we111f.obj ev110.obj ev110d.obj ev110f.obj \
	we109.obj we109d.obj we109f.obj we108.obj we108d.obj we108f.obj we107.obj we107d.obj \
	we107f.obj we106.obj we106d.obj we106f.obj we105.obj we105d.obj we105f.obj pr120.obj \
	pr120d.obj pr120f.obj pr104.obj pr104d.obj pr104f.obj we103.obj we103d.obj we103f.obj \
	we102.obj we102d.obj we102f.obj pr101.obj pr101d.obj pr101f.obj we100.obj we100d.obj \
	we100f.obj we99.obj we99d.obj we99f.obj 

all::  Cobj4.lib

Cobj4.lib: $(OBJECTS) Makefile
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

