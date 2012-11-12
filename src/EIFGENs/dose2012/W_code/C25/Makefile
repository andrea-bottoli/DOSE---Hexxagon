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

OBJECTS = big_file_C25_c.obj 

OLDOBJECTS =  ap809.obj ap809d.obj ap809f.obj ev808.obj ev808d.obj ev808f.obj ev804.obj \
	ev804d.obj ev804f.obj fi793.obj fi793d.obj fi793f.obj ev824.obj ev824d.obj ev824f.obj \
	ev803.obj ev803d.obj ev803f.obj ev802.obj ev802d.obj ev802f.obj ev794.obj ev794d.obj \
	ev794f.obj ev820.obj ev820d.obj ev820f.obj ev818.obj ev818d.obj ev818f.obj ev801.obj \
	ev801d.obj ev801f.obj ev823.obj ev823d.obj ev823f.obj ev800.obj ev800d.obj ev800f.obj \
	ev822.obj ev822d.obj ev822f.obj ev814.obj ev814d.obj ev814f.obj ev799.obj ev799d.obj \
	ev799f.obj ev798.obj ev798d.obj ev798f.obj ev815.obj ev815d.obj ev815f.obj ev811.obj \
	ev811d.obj ev811f.obj ev810.obj ev810d.obj ev810f.obj ev807.obj ev807d.obj ev807f.obj \
	ev797.obj ev797d.obj ev797f.obj di792.obj di792d.obj di792f.obj ev796.obj ev796d.obj \
	ev796f.obj ev817.obj ev817d.obj ev817f.obj ev819.obj ev819d.obj ev819f.obj ev795.obj \
	ev795d.obj ev795f.obj ev821.obj ev821d.obj ev821f.obj ev806.obj ev806d.obj ev806f.obj \
	ev813.obj ev813d.obj ev813f.obj ev816.obj ev816d.obj ev816f.obj ev805.obj ev805d.obj \
	ev805f.obj ev812.obj ev812d.obj ev812f.obj 

all::  Cobj25.lib

Cobj25.lib: $(OBJECTS) Makefile
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

