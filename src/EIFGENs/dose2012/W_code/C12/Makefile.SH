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
echo "Compiling C code in C12"
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

OBJECTS = big_file_C12_c.obj 

OLDOBJECTS =  eq375.o eq375d.o eq375f.o in372.o in372d.o in372f.o er370.o \
	er370d.o er370f.o ex369.o ex369d.o ex369f.o in374.o in374d.o in374f.o \
	in373.o in373d.o in373f.o in366.o in366d.o in366f.o in368.o in368d.o \
	in368f.o in367.o in367d.o in367f.o in365.o in365d.o in365f.o st364.o \
	st364d.o st364f.o it371.o it371d.o it371f.o st363.o st363d.o st363f.o \
	me395.o me395d.o me395f.o me394.o me394d.o me394f.o kl378.o kl378d.o \
	kl378f.o we393.o we393d.o we393f.o we392.o we392d.o we392f.o we391.o \
	we391d.o we391f.o we390.o we390d.o we390f.o we389.o we389d.o we389f.o \
	ev388.o ev388d.o ev388f.o ev387.o ev387d.o ev387f.o we386.o we386d.o \
	we386f.o we385.o we385d.o we385f.o we384.o we384d.o we384f.o we383.o \
	we383d.o we383f.o we381.o we381d.o we381f.o ev382.o ev382d.o ev382f.o \
	we380.o we380d.o we380f.o me379.o me379d.o me379f.o ev377.o ev377d.o \
	ev377f.o ev376.o ev376d.o ev376f.o 

all: Cobj12.o

Cobj12.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj12.o $(OBJECTS)
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

