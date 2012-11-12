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

OBJECTS = big_file_C3_c.obj 

OLDOBJECTS =  eq97.obj eq97d.obj eq97f.obj is96.obj is96d.obj is96f.obj st95.obj st95d.obj \
	st95f.obj op94.obj op94d.obj op94f.obj rt93.obj rt93d.obj rt93f.obj sy92.obj sy92d.obj \
	sy92f.obj eq91.obj eq91d.obj eq91f.obj eq90.obj eq90d.obj eq90f.obj eq89.obj eq89d.obj \
	eq89f.obj sy88.obj sy88d.obj sy88f.obj hx87.obj hx87d.obj hx87f.obj ev86.obj ev86d.obj \
	ev86f.obj ev85.obj ev85d.obj ev85f.obj ev84.obj ev84d.obj ev84f.obj c_83.obj c_83d.obj \
	c_83f.obj eq82.obj eq82d.obj eq82f.obj fi81.obj fi81d.obj fi81f.obj it80.obj it80d.obj \
	it80f.obj ve79.obj ve79d.obj ve79f.obj we78.obj we78d.obj we78f.obj we77.obj we77d.obj \
	we77f.obj we76.obj we76d.obj we76f.obj we75.obj we75d.obj we75f.obj we74.obj we74d.obj \
	we74f.obj ev73.obj ev73d.obj ev73f.obj we72.obj we72d.obj we72f.obj ev71.obj ev71d.obj \
	ev71f.obj hx70.obj hx70d.obj hx70f.obj hx69.obj hx69d.obj hx69f.obj hx68.obj hx68d.obj \
	hx68f.obj we67.obj we67d.obj we67f.obj pa66.obj pa66d.obj pa66f.obj we98.obj we98d.obj \
	we98f.obj 

all::  Cobj3.lib

Cobj3.lib: $(OBJECTS) Makefile
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

