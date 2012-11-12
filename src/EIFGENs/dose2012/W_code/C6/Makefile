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

OBJECTS = big_file_C6_c.obj 

OLDOBJECTS =  we197.obj we197d.obj we197f.obj we196.obj we196d.obj we196f.obj we195.obj \
	we195d.obj we195f.obj we194.obj we194d.obj we194f.obj we193.obj we193d.obj we193f.obj \
	we192.obj we192d.obj we192f.obj we191.obj we191d.obj we191f.obj we190.obj we190d.obj \
	we190f.obj we189.obj we189d.obj we189f.obj we188.obj we188d.obj we188f.obj ev187.obj \
	ev187d.obj ev187f.obj we186.obj we186d.obj we186f.obj we185.obj we185d.obj we185f.obj \
	we184.obj we184d.obj we184f.obj we183.obj we183d.obj we183f.obj ev182.obj ev182d.obj \
	ev182f.obj we181.obj we181d.obj we181f.obj we180.obj we180d.obj we180f.obj we179.obj \
	we179d.obj we179f.obj we178.obj we178d.obj we178f.obj we177.obj we177d.obj we177f.obj \
	we176.obj we176d.obj we176f.obj we175.obj we175d.obj we175f.obj ev174.obj ev174d.obj \
	ev174f.obj we173.obj we173d.obj we173f.obj we172.obj we172d.obj we172f.obj we171.obj \
	we171d.obj we171f.obj we170.obj we170d.obj we170f.obj ev169.obj ev169d.obj ev169f.obj \
	ev168.obj ev168d.obj ev168f.obj ev167.obj ev167d.obj ev167f.obj ev166.obj ev166d.obj \
	ev166f.obj we165.obj we165d.obj we165f.obj 

all::  Cobj6.lib

Cobj6.lib: $(OBJECTS) Makefile
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

