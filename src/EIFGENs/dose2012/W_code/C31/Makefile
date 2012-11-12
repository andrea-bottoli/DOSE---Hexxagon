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

OBJECTS = big_file_C31_c.obj 

OLDOBJECTS =  co1011.obj co1011d.obj co1011f.obj ev1003.obj ev1003d.obj ev1003f.obj ev1010.obj \
	ev1010d.obj ev1010f.obj ev1009.obj ev1009d.obj ev1009f.obj ev1008.obj ev1008d.obj \
	ev1008f.obj ev1002.obj ev1002d.obj ev1002f.obj kl1020.obj kl1020d.obj kl1020f.obj \
	ev999.obj ev999d.obj ev999f.obj ev1019.obj ev1019d.obj ev1019f.obj ev1001.obj \
	ev1001d.obj ev1001f.obj ev1022.obj ev1022d.obj ev1022f.obj we1018.obj we1018d.obj \
	we1018f.obj ev993.obj ev993d.obj ev993f.obj we1021.obj we1021d.obj we1021f.obj \
	ev994.obj ev994d.obj ev994f.obj ev995.obj ev995d.obj ev995f.obj we1017.obj \
	we1017d.obj we1017f.obj we1007.obj we1007d.obj we1007f.obj ev1000.obj ev1000d.obj \
	ev1000f.obj ev992.obj ev992d.obj ev992f.obj ev991.obj ev991d.obj ev991f.obj ev998.obj \
	ev998d.obj ev998f.obj ev997.obj ev997d.obj ev997f.obj ev996.obj ev996d.obj ev996f.obj \
	ev990.obj ev990d.obj ev990f.obj uc1016.obj uc1016d.obj uc1016f.obj ev1005.obj \
	ev1005d.obj ev1005f.obj ev1004.obj ev1004d.obj ev1004f.obj uc1015.obj uc1015d.obj \
	uc1015f.obj uc1014.obj uc1014d.obj uc1014f.obj uc1013.obj uc1013d.obj uc1013f.obj \
	uc1012.obj uc1012d.obj uc1012f.obj th1006.obj th1006d.obj th1006f.obj 

all::  Cobj31.lib

Cobj31.lib: $(OBJECTS) Makefile
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

