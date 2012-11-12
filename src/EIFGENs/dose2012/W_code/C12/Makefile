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

OBJECTS = big_file_C12_c.obj 

OLDOBJECTS =  eq375.obj eq375d.obj eq375f.obj in372.obj in372d.obj in372f.obj er370.obj \
	er370d.obj er370f.obj ex369.obj ex369d.obj ex369f.obj in374.obj in374d.obj in374f.obj \
	in373.obj in373d.obj in373f.obj in366.obj in366d.obj in366f.obj in368.obj in368d.obj \
	in368f.obj in367.obj in367d.obj in367f.obj in365.obj in365d.obj in365f.obj st364.obj \
	st364d.obj st364f.obj it371.obj it371d.obj it371f.obj st363.obj st363d.obj st363f.obj \
	me395.obj me395d.obj me395f.obj me394.obj me394d.obj me394f.obj kl378.obj kl378d.obj \
	kl378f.obj we393.obj we393d.obj we393f.obj we392.obj we392d.obj we392f.obj we391.obj \
	we391d.obj we391f.obj we390.obj we390d.obj we390f.obj we389.obj we389d.obj we389f.obj \
	ev388.obj ev388d.obj ev388f.obj ev387.obj ev387d.obj ev387f.obj we386.obj we386d.obj \
	we386f.obj we385.obj we385d.obj we385f.obj we384.obj we384d.obj we384f.obj we383.obj \
	we383d.obj we383f.obj we381.obj we381d.obj we381f.obj ev382.obj ev382d.obj ev382f.obj \
	we380.obj we380d.obj we380f.obj me379.obj me379d.obj me379f.obj ev377.obj ev377d.obj \
	ev377f.obj ev376.obj ev376d.obj ev376f.obj 

all::  Cobj12.lib

Cobj12.lib: $(OBJECTS) Makefile
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

