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

OBJECTS = big_file_C1_c.obj 

OLDOBJECTS =  an1.obj an1d.obj an1f.obj hx32.obj hx32d.obj hx32f.obj kl31.obj kl31d.obj kl31f.obj \
	we30.obj we30d.obj we30f.obj we29.obj we29d.obj we29f.obj ev28.obj ev28d.obj ev28f.obj \
	we27.obj we27d.obj we27f.obj we26.obj we26d.obj we26f.obj we25.obj we25d.obj we25f.obj \
	we24.obj we24d.obj we24f.obj we23.obj we23d.obj we23f.obj we22.obj we22d.obj we22f.obj \
	we21.obj we21d.obj we21f.obj we20.obj we20d.obj we20f.obj we19.obj we19d.obj we19f.obj \
	we18.obj we18d.obj we18f.obj we17.obj we17d.obj we17f.obj we16.obj we16d.obj we16f.obj \
	we15.obj we15d.obj we15f.obj we14.obj we14d.obj we14f.obj ev13.obj ev13d.obj ev13f.obj \
	eq12.obj eq12d.obj eq12f.obj eq11.obj eq11d.obj eq11f.obj we10.obj we10d.obj we10f.obj \
	we9.obj we9d.obj we9f.obj we8.obj we8d.obj we8f.obj we7.obj we7d.obj we7f.obj pr6.obj \
	pr6d.obj pr6f.obj we5.obj we5d.obj we5f.obj pr4.obj pr4d.obj pr4f.obj fi3.obj fi3d.obj \
	fi3f.obj we2.obj we2d.obj we2f.obj 

all::  Cobj1.lib

Cobj1.lib: $(OBJECTS) Makefile
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

