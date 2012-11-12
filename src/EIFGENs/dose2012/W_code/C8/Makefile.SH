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
echo "Compiling C code in C8"
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

OBJECTS = big_file_C8_c.obj 

OLDOBJECTS =  is236.o is236d.o is236f.o eq238.o eq238d.o eq238f.o in231.o \
	in231d.o in231f.o it237.o it237d.o it237f.o ex235.o ex235d.o ex235f.o \
	ev234.o ev234d.o ev234f.o ev233.o ev233d.o ev233f.o ad232.o ad232d.o \
	ad232f.o eq239.o eq239d.o eq239f.o ev261.o ev261d.o ev261f.o ev254.o \
	ev254d.o ev254f.o ev252.o ev252d.o ev252f.o ev250.o ev250d.o ev250f.o \
	ev247.o ev247d.o ev247f.o ev263.o ev263d.o ev263f.o uc262.o uc262d.o \
	uc262f.o ev260.o ev260d.o ev260f.o we259.o we259d.o we259f.o we258.o \
	we258d.o we258f.o ev242.o ev242d.o ev242f.o we257.o we257d.o we257f.o \
	we256.o we256d.o we256f.o we255.o we255d.o we255f.o ev253.o ev253d.o \
	ev253f.o ev251.o ev251d.o ev251f.o ev249.o ev249d.o ev249f.o we248.o \
	we248d.o we248f.o ev246.o ev246d.o ev246f.o ki244.o ki244d.o ki244f.o \
	we243.o we243d.o we243f.o ev241.o ev241d.o ev241f.o ki245.o ki245d.o \
	ki245f.o we240.o we240d.o we240f.o 

all: Cobj8.o

Cobj8.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj8.o $(OBJECTS)
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

