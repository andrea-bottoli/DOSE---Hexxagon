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
echo "Compiling C code in C4"
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

OBJECTS = big_file_C4_c.obj 

OLDOBJECTS =  da122.o da122d.o da122f.o ev131.o ev131d.o ev131f.o ev130.o \
	ev130d.o ev130f.o ev129.o ev129d.o ev129f.o ev128.o ev128d.o ev128f.o \
	ev127.o ev127d.o ev127f.o we126.o we126d.o we126f.o we125.o we125d.o \
	we125f.o we124.o we124d.o we124f.o we123.o we123d.o we123f.o da121.o \
	da121d.o da121f.o pr119.o pr119d.o pr119f.o we118.o we118d.o we118f.o \
	ki117.o ki117d.o ki117f.o we116.o we116d.o we116f.o we115.o we115d.o \
	we115f.o we114.o we114d.o we114f.o we113.o we113d.o we113f.o we112.o \
	we112d.o we112f.o we111.o we111d.o we111f.o ev110.o ev110d.o ev110f.o \
	we109.o we109d.o we109f.o we108.o we108d.o we108f.o we107.o we107d.o \
	we107f.o we106.o we106d.o we106f.o we105.o we105d.o we105f.o pr120.o \
	pr120d.o pr120f.o pr104.o pr104d.o pr104f.o we103.o we103d.o we103f.o \
	we102.o we102d.o we102f.o pr101.o pr101d.o pr101f.o we100.o we100d.o \
	we100f.o we99.o we99d.o we99f.o 

all: Cobj4.o

Cobj4.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj4.o $(OBJECTS)
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

