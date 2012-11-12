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

OBJECTS = big_file_C22_c.obj 

OLDOBJECTS =  we719.obj we719d.obj we719f.obj kl700.obj kl700d.obj kl700f.obj we725.obj \
	we725d.obj we725f.obj we723.obj we723d.obj we723f.obj we722.obj we722d.obj we722f.obj \
	we696.obj we696d.obj we696f.obj we699.obj we699d.obj we699f.obj we697.obj we697d.obj \
	we697f.obj we713.obj we713d.obj we713f.obj kl705.obj kl705d.obj kl705f.obj we724.obj \
	we724d.obj we724f.obj we718.obj we718d.obj we718f.obj we721.obj we721d.obj we721f.obj \
	we694.obj we694d.obj we694f.obj we693.obj we693d.obj we693f.obj we698.obj we698d.obj \
	we698f.obj we695.obj we695d.obj we695f.obj ev717.obj ev717d.obj ev717f.obj we716.obj \
	we716d.obj we716f.obj we720.obj we720d.obj we720f.obj ki711.obj ki711d.obj ki711f.obj \
	ki710.obj ki710d.obj ki710f.obj kl704.obj kl704d.obj kl704f.obj uc703.obj uc703d.obj \
	uc703f.obj uc702.obj uc702d.obj uc702f.obj we715.obj we715d.obj we715f.obj ki709.obj \
	ki709d.obj ki709f.obj ki708.obj ki708d.obj ki708f.obj kl712.obj kl712d.obj kl712f.obj \
	uc701.obj uc701d.obj uc701f.obj ki707.obj ki707d.obj ki707f.obj ki706.obj ki706d.obj \
	ki706f.obj we714.obj we714d.obj we714f.obj 

all::  Cobj22.lib

Cobj22.lib: $(OBJECTS) Makefile
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

