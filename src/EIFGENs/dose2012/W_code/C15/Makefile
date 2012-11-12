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

OBJECTS = big_file_C15_c.obj 

OLDOBJECTS =  ar476.obj ar476d.obj ar476f.obj in477.obj in477d.obj in477f.obj pr472.obj \
	pr472d.obj pr472f.obj cu473.obj cu473d.obj cu473f.obj ar475.obj ar475d.obj ar475f.obj \
	ha474.obj ha474d.obj ha474f.obj kl488.obj kl488d.obj kl488f.obj ev494.obj ev494d.obj \
	ev494f.obj un490.obj un490d.obj un490f.obj we468.obj we468d.obj we468f.obj we467.obj \
	we467d.obj we467f.obj ev470.obj ev470d.obj ev470f.obj ev491.obj ev491d.obj ev491f.obj \
	we486.obj we486d.obj we486f.obj we466.obj we466d.obj we466f.obj we485.obj we485d.obj \
	we485f.obj ev463.obj ev463d.obj ev463f.obj id492.obj id492d.obj id492f.obj ra471.obj \
	ra471d.obj ra471f.obj we493.obj we493d.obj we493f.obj we465.obj we465d.obj we465f.obj \
	we469.obj we469d.obj we469f.obj we483.obj we483d.obj we483f.obj we464.obj we464d.obj \
	we464f.obj we462.obj we462d.obj we462f.obj we482.obj we482d.obj we482f.obj we481.obj \
	we481d.obj we481f.obj we480.obj we480d.obj we480f.obj we487.obj we487d.obj we487f.obj \
	uc479.obj uc479d.obj uc479f.obj ki489.obj ki489d.obj ki489f.obj we484.obj we484d.obj \
	we484f.obj ac478.obj ac478d.obj ac478f.obj 

all::  Cobj15.lib

Cobj15.lib: $(OBJECTS) Makefile
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

