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

OBJECTS = big_file_C11_c.obj 

OLDOBJECTS =  rt354.obj rt354d.obj rt354f.obj rt353.obj rt353d.obj rt353f.obj st362.obj \
	st362d.obj st362f.obj nu360.obj nu360d.obj nu360f.obj it359.obj it359d.obj it359f.obj \
	do344.obj do344d.obj do344f.obj st356.obj st356d.obj st356f.obj st358.obj st358d.obj \
	st358f.obj st357.obj st357d.obj st357f.obj rt355.obj rt355d.obj rt355f.obj rt352.obj \
	rt352d.obj rt352f.obj ev349.obj ev349d.obj ev349f.obj ev348.obj ev348d.obj ev348f.obj \
	ev338.obj ev338d.obj ev338f.obj ev346.obj ev346d.obj ev346f.obj in361.obj in361d.obj \
	in361f.obj ma342.obj ma342d.obj ma342f.obj tt341.obj tt341d.obj tt341f.obj tt340.obj \
	tt340d.obj tt340f.obj tt339.obj tt339d.obj tt339f.obj ev337.obj ev337d.obj ev337f.obj \
	ev335.obj ev335d.obj ev335f.obj ev336.obj ev336d.obj ev336f.obj ev333.obj ev333d.obj \
	ev333f.obj ev331.obj ev331d.obj ev331f.obj ev332.obj ev332d.obj ev332f.obj fo345.obj \
	fo345d.obj fo345f.obj ev351.obj ev351d.obj ev351f.obj si343.obj si343d.obj si343f.obj \
	ev350.obj ev350d.obj ev350f.obj ev334.obj ev334d.obj ev334f.obj rt330.obj rt330d.obj \
	rt330f.obj ev347.obj ev347d.obj ev347f.obj 

all::  Cobj11.lib

Cobj11.lib: $(OBJECTS) Makefile
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

