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

OBJECTS = big_file_C5_c.obj 

OLDOBJECTS =  eq161.obj eq161d.obj eq161f.obj we164.obj we164d.obj we164f.obj we163.obj \
	we163d.obj we163f.obj ba162.obj ba162d.obj ba162f.obj eq160.obj eq160d.obj eq160f.obj \
	fo159.obj fo159d.obj fo159f.obj ev142.obj ev142d.obj ev142f.obj ev158.obj ev158d.obj \
	ev158f.obj we157.obj we157d.obj we157f.obj kl137.obj kl137d.obj kl137f.obj kl156.obj \
	kl156d.obj kl156f.obj we155.obj we155d.obj we155f.obj we154.obj we154d.obj we154f.obj \
	we153.obj we153d.obj we153f.obj we152.obj we152d.obj we152f.obj we151.obj we151d.obj \
	we151f.obj we150.obj we150d.obj we150f.obj we149.obj we149d.obj we149f.obj we148.obj \
	we148d.obj we148f.obj ev147.obj ev147d.obj ev147f.obj we146.obj we146d.obj we146f.obj \
	we145.obj we145d.obj we145f.obj we144.obj we144d.obj we144f.obj we143.obj we143d.obj \
	we143f.obj ev141.obj ev141d.obj ev141f.obj uc140.obj uc140d.obj uc140f.obj kl136.obj \
	kl136d.obj kl136f.obj kl138.obj kl138d.obj kl138f.obj we135.obj we135d.obj we135f.obj \
	ev134.obj ev134d.obj ev134f.obj we133.obj we133d.obj we133f.obj we132.obj we132d.obj \
	we132f.obj uc139.obj uc139d.obj uc139f.obj 

all::  Cobj5.lib

Cobj5.lib: $(OBJECTS) Makefile
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

