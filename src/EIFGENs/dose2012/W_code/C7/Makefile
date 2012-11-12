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

OBJECTS = big_file_C7_c.obj 

OLDOBJECTS =  ob223.obj ob223d.obj ob223f.obj in230.obj in230d.obj in230f.obj ev229.obj \
	ev229d.obj ev229f.obj ev228.obj ev228d.obj ev228f.obj ev227.obj ev227d.obj ev227f.obj \
	ev226.obj ev226d.obj ev226f.obj ev225.obj ev225d.obj ev225f.obj ev224.obj ev224d.obj \
	ev224f.obj ob222.obj ob222d.obj ob222f.obj we221.obj we221d.obj we221f.obj ev220.obj \
	ev220d.obj ev220f.obj kl219.obj kl219d.obj kl219f.obj uc218.obj uc218d.obj uc218f.obj \
	we217.obj we217d.obj we217f.obj we216.obj we216d.obj we216f.obj we215.obj we215d.obj \
	we215f.obj ev214.obj ev214d.obj ev214f.obj ev213.obj ev213d.obj ev213f.obj kl212.obj \
	kl212d.obj kl212f.obj ev211.obj ev211d.obj ev211f.obj ev210.obj ev210d.obj ev210f.obj \
	ev209.obj ev209d.obj ev209f.obj ev208.obj ev208d.obj ev208f.obj ev207.obj ev207d.obj \
	ev207f.obj ev206.obj ev206d.obj ev206f.obj we205.obj we205d.obj we205f.obj gr204.obj \
	gr204d.obj gr204f.obj so203.obj so203d.obj so203f.obj ev202.obj ev202d.obj ev202f.obj \
	ev201.obj ev201d.obj ev201f.obj we200.obj we200d.obj we200f.obj we199.obj we199d.obj \
	we199f.obj we198.obj we198d.obj we198f.obj 

all::  Cobj7.lib

Cobj7.lib: $(OBJECTS) Makefile
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

