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
echo "Compiling C code in C10"
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

OBJECTS = big_file_C10_c.obj 

OLDOBJECTS =  ev329.o ev329d.o ev329f.o we328.o we328d.o we328f.o we327.o \
	we327d.o we327f.o we326.o we326d.o we326f.o we325.o we325d.o we325f.o \
	ev323.o ev323d.o ev323f.o th319.o th319d.o th319f.o ev318.o ev318d.o \
	ev318f.o ev317.o ev317d.o ev317f.o ev315.o ev315d.o ev315f.o ev313.o \
	ev313d.o ev313f.o we312.o we312d.o we312f.o ev303.o ev303d.o ev303f.o \
	ev314.o ev314d.o ev314f.o ev324.o ev324d.o ev324f.o we311.o we311d.o \
	we311f.o we310.o we310d.o we310f.o ev316.o ev316d.o ev316f.o ev309.o \
	ev309d.o ev309f.o we308.o we308d.o we308f.o ev307.o ev307d.o ev307f.o \
	we306.o we306d.o we306f.o ev299.o ev299d.o ev299f.o we305.o we305d.o \
	we305f.o we304.o we304d.o we304f.o ev302.o ev302d.o ev302f.o we301.o \
	we301d.o we301f.o we300.o we300d.o we300f.o ev298.o ev298d.o ev298f.o \
	ev297.o ev297d.o ev297f.o th321.o th321d.o th321f.o pr322.o pr322d.o \
	pr322f.o th320.o th320d.o th320f.o 

all: Cobj10.o

Cobj10.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj10.o $(OBJECTS)
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

