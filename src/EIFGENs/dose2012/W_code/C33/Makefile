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

OBJECTS = big_file_C33_c.obj 

OLDOBJECTS =  da1079.obj da1079d.obj da1079f.obj eq1088.obj eq1088d.obj eq1088f.obj ev1076.obj \
	ev1076d.obj ev1076f.obj da1074.obj da1074d.obj da1074f.obj da1072.obj da1072d.obj \
	da1072f.obj ti1070.obj ti1070d.obj ti1070f.obj da1077.obj da1077d.obj da1077f.obj \
	ev1068.obj ev1068d.obj ev1068f.obj we1085.obj we1085d.obj we1085f.obj ev1083.obj \
	ev1083d.obj ev1083f.obj ev1086.obj ev1086d.obj ev1086f.obj ev1082.obj ev1082d.obj \
	ev1082f.obj we1080.obj we1080d.obj we1080f.obj kl1067.obj kl1067d.obj kl1067f.obj \
	kl1066.obj kl1066d.obj kl1066f.obj kl1065.obj kl1065d.obj kl1065f.obj we1075.obj \
	we1075d.obj we1075f.obj da1078.obj da1078d.obj da1078f.obj fi1073.obj fi1073d.obj \
	fi1073f.obj da1071.obj da1071d.obj da1071f.obj ti1069.obj ti1069d.obj ti1069f.obj \
	we1081.obj we1081d.obj we1081f.obj we1084.obj we1084d.obj we1084f.obj ki1064.obj \
	ki1064d.obj ki1064f.obj we1062.obj we1062d.obj we1062f.obj we1063.obj we1063d.obj \
	we1063f.obj uc1087.obj uc1087d.obj uc1087f.obj we1061.obj we1061d.obj we1061f.obj \
	we1060.obj we1060d.obj we1060f.obj we1059.obj we1059d.obj we1059f.obj we1058.obj \
	we1058d.obj we1058f.obj we1057.obj we1057d.obj we1057f.obj we1056.obj we1056d.obj \
	we1056f.obj 

all::  Cobj33.lib

Cobj33.lib: $(OBJECTS) Makefile
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

