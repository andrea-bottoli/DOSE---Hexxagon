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
echo "Compiling C code in C3"
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

OBJECTS = big_file_C3_c.obj 

OLDOBJECTS =  eq97.o eq97d.o eq97f.o is96.o is96d.o is96f.o st95.o st95d.o \
	st95f.o op94.o op94d.o op94f.o rt93.o rt93d.o rt93f.o sy92.o sy92d.o \
	sy92f.o eq91.o eq91d.o eq91f.o eq90.o eq90d.o eq90f.o eq89.o eq89d.o \
	eq89f.o sy88.o sy88d.o sy88f.o hx87.o hx87d.o hx87f.o ev86.o ev86d.o \
	ev86f.o ev85.o ev85d.o ev85f.o ev84.o ev84d.o ev84f.o c_83.o c_83d.o \
	c_83f.o eq82.o eq82d.o eq82f.o fi81.o fi81d.o fi81f.o it80.o it80d.o \
	it80f.o ve79.o ve79d.o ve79f.o we78.o we78d.o we78f.o we77.o we77d.o \
	we77f.o we76.o we76d.o we76f.o we75.o we75d.o we75f.o we74.o we74d.o \
	we74f.o ev73.o ev73d.o ev73f.o we72.o we72d.o we72f.o ev71.o ev71d.o \
	ev71f.o hx70.o hx70d.o hx70f.o hx69.o hx69d.o hx69f.o hx68.o hx68d.o \
	hx68f.o we67.o we67d.o we67f.o pa66.o pa66d.o pa66f.o we98.o we98d.o \
	we98f.o 

all: Cobj3.o

Cobj3.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj3.o $(OBJECTS)
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

