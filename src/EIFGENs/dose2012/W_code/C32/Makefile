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

OBJECTS = big_file_C32_c.obj 

OLDOBJECTS =  ma1037.obj ma1037d.obj ma1037f.obj rt1031.obj rt1031d.obj rt1031f.obj ma1036.obj \
	ma1036d.obj ma1036f.obj rt1032.obj rt1032d.obj rt1032f.obj rt1030.obj rt1030d.obj \
	rt1030f.obj rt1029.obj rt1029d.obj rt1029f.obj tt1050.obj tt1050d.obj tt1050f.obj \
	ev1024.obj ev1024d.obj ev1024f.obj kl1034.obj kl1034d.obj kl1034f.obj tt1049.obj \
	tt1049d.obj tt1049f.obj tt1048.obj tt1048d.obj tt1048f.obj ev1023.obj ev1023d.obj \
	ev1023f.obj we1028.obj we1028d.obj we1028f.obj ev1033.obj ev1033d.obj ev1033f.obj \
	we1026.obj we1026d.obj we1026f.obj ev1027.obj ev1027d.obj ev1027f.obj we1025.obj \
	we1025d.obj we1025f.obj kl1047.obj kl1047d.obj kl1047f.obj kl1042.obj kl1042d.obj \
	kl1042f.obj kl1046.obj kl1046d.obj kl1046f.obj kl1041.obj kl1041d.obj kl1041f.obj \
	kl1044.obj kl1044d.obj kl1044f.obj kl1035.obj kl1035d.obj kl1035f.obj kl1045.obj \
	kl1045d.obj kl1045f.obj we1051.obj we1051d.obj we1051f.obj kl1040.obj kl1040d.obj \
	kl1040f.obj kl1043.obj kl1043d.obj kl1043f.obj we1055.obj we1055d.obj we1055f.obj \
	we1054.obj we1054d.obj we1054f.obj we1053.obj we1053d.obj we1053f.obj we1052.obj \
	we1052d.obj we1052f.obj kl1039.obj kl1039d.obj kl1039f.obj kl1038.obj kl1038d.obj \
	kl1038f.obj 

all::  Cobj32.lib

Cobj32.lib: $(OBJECTS) Makefile
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

