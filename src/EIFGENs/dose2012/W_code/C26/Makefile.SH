case $CONFIG in
'')
	if test ! -f ../config.sh; then
		(echo "Can't find ../config.sh."; exit 1)
	fi 2>/dev/null
	. ../config.sh
	;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Compiling C code in C26"
$spitshell >Makefile <<!GROK!THIS!
INCLUDE_PATH =  -I"\$(ISE_LIBRARY)\library\process\classic\windows\include" -I"\$(ISE_LIBRARY)\library\wel\spec\windows\include" -I"\$(ISE_LIBRARY)\library\vision2\spec\include"
SHELL = /bin/sh
CC = $cc
CPP = $cpp
CFLAGS = $wkoptimize $mtccflags $large -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
CPPFLAGS = $wkoptimize $mtcppflags $large -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
LDFLAGS = $ldflags
CCLDFLAGS = $ccldflags  $windows_flags
LDSHAREDFLAGS =  $mtldsharedflags
EIFLIB = "$rt_lib/$prefix$mt_prefix$wkeiflib$suffix"
EIFTEMPLATES = $rt_templates
LIBS = $mtlibs
MAKE = $make
AR = $ar
LD = $ld
MKDEP = $mkdep \$(DPFLAGS) --
MV = $mv
CP = $cp
RANLIB = $ranlib
RM = $rm -f
FILE_EXIST = $file_exist
RMDIR = $rmdir
X2C = "$x2c"
SHAREDLINK = $sharedlink
SHAREDLIBS = $sharedlibs
SHARED_SUFFIX = $shared_suffix
COMMAND_MAKEFILE = 
START_TEST = $start_test 
END_TEST = $end_test 
CREATE_TEST = $create_test 
SYSTEM_IN_DYNAMIC_LIB = dose2012$shared_suffix 
!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C26_c.obj 

OLDOBJECTS =  ev845.o ev845d.o ev845f.o ev848.o ev848d.o ev848f.o ev855.o \
	ev855d.o ev855f.o ev836.o ev836d.o ev836f.o ev841.o ev841d.o ev841f.o \
	ev830.o ev830d.o ev830f.o ev842.o ev842d.o ev842f.o ev825.o ev825d.o \
	ev825f.o ev846.o ev846d.o ev846f.o ev852.o ev852d.o ev852f.o ev851.o \
	ev851d.o ev851f.o ev832.o ev832d.o ev832f.o ev839.o ev839d.o ev839f.o \
	ev831.o ev831d.o ev831f.o ev827.o ev827d.o ev827f.o ev829.o ev829d.o \
	ev829f.o ev850.o ev850d.o ev850f.o ev833.o ev833d.o ev833f.o ev854.o \
	ev854d.o ev854f.o ev844.o ev844d.o ev844f.o ev838.o ev838d.o ev838f.o \
	ev835.o ev835d.o ev835f.o ev828.o ev828d.o ev828f.o ev856.o ev856d.o \
	ev856f.o ev849.o ev849d.o ev849f.o ev837.o ev837d.o ev837f.o ev826.o \
	ev826d.o ev826f.o ev843.o ev843d.o ev843f.o ev834.o ev834d.o ev834f.o \
	ev840.o ev840d.o ev840f.o ev853.o ev853d.o ev853f.o ev857.o ev857d.o \
	ev857f.o ev847.o ev847d.o ev847f.o 

all: Cobj26.o

Cobj26.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj26.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile

