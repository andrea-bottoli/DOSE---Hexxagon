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

OBJECTS = big_file_C16_c.obj 

OLDOBJECTS =  eq512.obj eq512d.obj eq512f.obj eq516.obj eq516d.obj eq516f.obj ex507.obj \
	ex507d.obj ex507f.obj c_505.obj c_505d.obj c_505f.obj mi515.obj mi515d.obj mi515f.obj \
	ev500.obj ev500d.obj ev500f.obj eq517.obj eq517d.obj eq517f.obj st502.obj st502d.obj \
	st502f.obj mi520.obj mi520d.obj mi520f.obj ev498.obj ev498d.obj ev498f.obj ev521.obj \
	ev521d.obj ev521f.obj ev499.obj ev499d.obj ev499f.obj we506.obj we506d.obj we506f.obj \
	we504.obj we504d.obj we504f.obj da518.obj da518d.obj da518f.obj ev501.obj ev501d.obj \
	ev501f.obj we519.obj we519d.obj we519f.obj we495.obj we495d.obj we495f.obj ev497.obj \
	ev497d.obj ev497f.obj ev496.obj ev496d.obj ev496f.obj ev527.obj ev527d.obj ev527f.obj \
	ev526.obj ev526d.obj ev526f.obj ev525.obj ev525d.obj ev525f.obj ev524.obj ev524d.obj \
	ev524f.obj ev523.obj ev523d.obj ev523f.obj ev522.obj ev522d.obj ev522f.obj pr513.obj \
	pr513d.obj pr513f.obj pr514.obj pr514d.obj pr514f.obj pr511.obj pr511d.obj pr511f.obj \
	pr510.obj pr510d.obj pr510f.obj pr509.obj pr509d.obj pr509f.obj pr508.obj pr508d.obj \
	pr508f.obj we503.obj we503d.obj we503f.obj 

all::  Cobj16.lib

Cobj16.lib: $(OBJECTS) Makefile
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

