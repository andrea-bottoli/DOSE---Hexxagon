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

OBJECTS = big_file_C24_c.obj 

OLDOBJECTS =  po779.obj po779d.obj po780.obj po780d.obj po779f.obj st788.obj st788d.obj \
	st788f.obj st787.obj st787d.obj st787f.obj re764.obj re764d.obj re765.obj re765d.obj \
	re764f.obj re761.obj re761d.obj re762.obj re762d.obj re761f.obj na759.obj na759d.obj \
	ch767.obj ch767d.obj ch768.obj ch768d.obj ch767f.obj ch773.obj ch773d.obj ch774.obj \
	ch774d.obj ch773f.obj bo770.obj bo770d.obj bo771.obj bo771d.obj bo770f.obj po778.obj \
	po778d.obj po778f.obj ch772.obj ch772d.obj ch772f.obj bo769.obj bo769d.obj bo769f.obj \
	ch766.obj ch766d.obj ch766f.obj re763.obj re763d.obj re763f.obj re760.obj re760d.obj \
	re760f.obj st786.obj st786d.obj st786f.obj re781.obj re781d.obj re781f.obj re784.obj \
	re784d.obj re784f.obj re783.obj re783d.obj re783f.obj im785.obj im785d.obj im785f.obj \
	im782.obj im782d.obj im782f.obj pa791.obj pa791d.obj pa791f.obj ev789.obj ev789d.obj \
	ev789f.obj kl790.obj kl790d.obj kl790f.obj ev777.obj ev777d.obj ev777f.obj ev776.obj \
	ev776d.obj ev776f.obj ev775.obj ev775d.obj ev775f.obj 

all::  Cobj24.lib

Cobj24.lib: $(OBJECTS) Makefile
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

