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

OBJECTS = big_file_C20_c.obj 

OLDOBJECTS =  we659.obj we659d.obj we659f.obj we658.obj we658d.obj we658f.obj we657.obj \
	we657d.obj we657f.obj we656.obj we656d.obj we656f.obj we655.obj we655d.obj we655f.obj \
	we654.obj we654d.obj we654f.obj we653.obj we653d.obj we653f.obj we652.obj we652d.obj \
	we652f.obj we651.obj we651d.obj we651f.obj we650.obj we650d.obj we650f.obj we649.obj \
	we649d.obj we649f.obj we648.obj we648d.obj we648f.obj we647.obj we647d.obj we647f.obj \
	we646.obj we646d.obj we646f.obj we645.obj we645d.obj we645f.obj we644.obj we644d.obj \
	we644f.obj we643.obj we643d.obj we643f.obj we642.obj we642d.obj we642f.obj we641.obj \
	we641d.obj we641f.obj we640.obj we640d.obj we640f.obj we639.obj we639d.obj we639f.obj \
	we638.obj we638d.obj we638f.obj we637.obj we637d.obj we637f.obj we636.obj we636d.obj \
	we636f.obj we635.obj we635d.obj we635f.obj we634.obj we634d.obj we634f.obj we633.obj \
	we633d.obj we633f.obj we632.obj we632d.obj we632f.obj we631.obj we631d.obj we631f.obj \
	we630.obj we630d.obj we630f.obj we629.obj we629d.obj we629f.obj we628.obj we628d.obj \
	we628f.obj we627.obj we627d.obj we627f.obj 

all::  Cobj20.lib

Cobj20.lib: $(OBJECTS) Makefile
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

