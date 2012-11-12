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

OBJECTS = big_file_C26_c.obj 

OLDOBJECTS =  ev845.obj ev845d.obj ev845f.obj ev848.obj ev848d.obj ev848f.obj ev855.obj \
	ev855d.obj ev855f.obj ev836.obj ev836d.obj ev836f.obj ev841.obj ev841d.obj ev841f.obj \
	ev830.obj ev830d.obj ev830f.obj ev842.obj ev842d.obj ev842f.obj ev825.obj ev825d.obj \
	ev825f.obj ev846.obj ev846d.obj ev846f.obj ev852.obj ev852d.obj ev852f.obj ev851.obj \
	ev851d.obj ev851f.obj ev832.obj ev832d.obj ev832f.obj ev839.obj ev839d.obj ev839f.obj \
	ev831.obj ev831d.obj ev831f.obj ev827.obj ev827d.obj ev827f.obj ev829.obj ev829d.obj \
	ev829f.obj ev850.obj ev850d.obj ev850f.obj ev833.obj ev833d.obj ev833f.obj ev854.obj \
	ev854d.obj ev854f.obj ev844.obj ev844d.obj ev844f.obj ev838.obj ev838d.obj ev838f.obj \
	ev835.obj ev835d.obj ev835f.obj ev828.obj ev828d.obj ev828f.obj ev856.obj ev856d.obj \
	ev856f.obj ev849.obj ev849d.obj ev849f.obj ev837.obj ev837d.obj ev837f.obj ev826.obj \
	ev826d.obj ev826f.obj ev843.obj ev843d.obj ev843f.obj ev834.obj ev834d.obj ev834f.obj \
	ev840.obj ev840d.obj ev840f.obj ev853.obj ev853d.obj ev853f.obj ev857.obj ev857d.obj \
	ev857f.obj ev847.obj ev847d.obj ev847f.obj 

all::  Cobj26.lib

Cobj26.lib: $(OBJECTS) Makefile
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

