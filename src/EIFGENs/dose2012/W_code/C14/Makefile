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

OBJECTS = big_file_C14_c.obj 

OLDOBJECTS =  ex455.obj ex455d.obj ex455f.obj pl457.obj pl457d.obj pl457f.obj ei431.obj \
	ei431d.obj ei431f.obj cr447.obj cr447d.obj cr447f.obj vo444.obj vo444d.obj vo444f.obj \
	io439.obj io439d.obj io439f.obj mi438.obj mi438d.obj mi438f.obj se437.obj se437d.obj \
	se437f.obj ad446.obj ad446d.obj ad446f.obj ol430.obj ol430d.obj ol430f.obj ex435.obj \
	ex435d.obj ex435f.obj vo443.obj vo443d.obj vo443f.obj no434.obj no434d.obj no434f.obj \
	pr454.obj pr454d.obj pr454f.obj po453.obj po453d.obj po453f.obj in452.obj in452d.obj \
	in452f.obj ch451.obj ch451d.obj ch451f.obj ro442.obj ro442d.obj ro442f.obj ba441.obj \
	ba441d.obj ba441f.obj va450.obj va450d.obj va450f.obj lo449.obj lo449d.obj lo449f.obj \
	eq456.obj eq456d.obj eq456f.obj as448.obj as448d.obj as448f.obj sy429.obj sy429d.obj \
	sy429f.obj ei445.obj ei445d.obj ei445f.obj la440.obj la440d.obj la440f.obj da436.obj \
	da436d.obj da436f.obj ei433.obj ei433d.obj ei433f.obj ei432.obj ei432d.obj ei432f.obj \
	we461.obj we461d.obj we461f.obj we460.obj we460d.obj we460f.obj we459.obj we459d.obj \
	we459f.obj kl458.obj kl458d.obj kl458f.obj 

all::  Cobj14.lib

Cobj14.lib: $(OBJECTS) Makefile
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

