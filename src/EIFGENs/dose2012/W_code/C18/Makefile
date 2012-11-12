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

OBJECTS = big_file_C18_c.obj big_file_C18_cpp.obj 

OLDOBJECTS =  ne584.obj ne584d.obj ne584f.obj pl587.obj pl587d.obj pl587f.obj ab566.obj \
	ab566d.obj ab566f.obj de563.obj de563d.obj de563f.obj ad576.obj ad576d.obj ad576f.obj \
	eq588.obj eq588d.obj eq588f.obj di579.obj di579d.obj di579f.obj ne583.obj ne583d.obj \
	ne583f.obj st582.obj st582d.obj st582f.obj ma572.obj ma572d.obj ma572f.obj fi585.obj \
	fi585d.obj fi585f.obj nu567.obj nu567d.obj nu567f.obj ra586.obj ra586d.obj ra586f.obj \
	ev565.obj ev565d.obj ev565f.obj ev564.obj ev564d.obj ev564f.obj ev590.obj ev590d.obj \
	ev590f.obj mu571.obj mu571d.obj mu571f.obj id589.obj id589d.obj id589f.obj me578.obj \
	me578d.obj me578f.obj ad577.obj ad577d.obj ad577f.obj ex575.obj ex575d.obj ex575f.obj \
	di568.obj di568d.obj di568f.obj so581.obj so581d.obj so581f.obj io580.obj io580d.obj \
	io580f.obj ev574.obj ev574d.obj ev574f.obj we591.obj we591d.obj we591f.obj we573.obj \
	we573d.obj we573f.obj we593.obj we593d.obj we593f.obj we570.obj we570d.obj we570f.obj \
	we592.obj we592d.obj we592f.obj ki562.obj ki562d.obj ki562f.obj ki561.obj ki561d.obj \
	ki561f.obj co569.obj co569d.obj co569f.obj 

all::  Cobj18.lib

Cobj18.lib: $(OBJECTS) Makefile
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

