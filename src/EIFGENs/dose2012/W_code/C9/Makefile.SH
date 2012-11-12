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
echo "Compiling C code in C9"
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

OBJECTS = big_file_C9_c.obj 

OLDOBJECTS =  da290.o da290d.o da290f.o da289.o da289d.o da289f.o da292.o \
	da292d.o da292f.o da287.o da287d.o da287f.o da288.o da288d.o da288f.o \
	ti286.o ti286d.o ti286f.o ti285.o ti285d.o ti285f.o ti284.o ti284d.o \
	ti284f.o ev280.o ev280d.o ev280f.o ev282.o ev282d.o ev282f.o ev296.o \
	ev296d.o ev296f.o ev294.o ev294d.o ev294f.o ev295.o ev295d.o ev295f.o \
	we293.o we293d.o we293f.o co291.o co291d.o co291f.o ti283.o ti283d.o \
	ti283f.o ev281.o ev281d.o ev281f.o ev266.o ev266d.o ev266f.o ev279.o \
	ev279d.o ev279f.o uc278.o uc278d.o uc278f.o uc277.o uc277d.o uc277f.o \
	we276.o we276d.o we276f.o we275.o we275d.o we275f.o we274.o we274d.o \
	we274f.o ev268.o ev268d.o ev268f.o ev272.o ev272d.o ev272f.o we271.o \
	we271d.o we271f.o we270.o we270d.o we270f.o we269.o we269d.o we269f.o \
	ev267.o ev267d.o ev267f.o ev265.o ev265d.o ev265f.o ev264.o ev264d.o \
	ev264f.o ev273.o ev273d.o ev273f.o 

all: Cobj9.o

Cobj9.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj9.o $(OBJECTS)
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

