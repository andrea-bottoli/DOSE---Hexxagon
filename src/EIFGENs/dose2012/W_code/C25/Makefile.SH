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
echo "Compiling C code in C25"
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

OBJECTS = big_file_C25_c.obj 

OLDOBJECTS =  ap809.o ap809d.o ap809f.o ev808.o ev808d.o ev808f.o ev804.o \
	ev804d.o ev804f.o fi793.o fi793d.o fi793f.o ev824.o ev824d.o ev824f.o \
	ev803.o ev803d.o ev803f.o ev802.o ev802d.o ev802f.o ev794.o ev794d.o \
	ev794f.o ev820.o ev820d.o ev820f.o ev818.o ev818d.o ev818f.o ev801.o \
	ev801d.o ev801f.o ev823.o ev823d.o ev823f.o ev800.o ev800d.o ev800f.o \
	ev822.o ev822d.o ev822f.o ev814.o ev814d.o ev814f.o ev799.o ev799d.o \
	ev799f.o ev798.o ev798d.o ev798f.o ev815.o ev815d.o ev815f.o ev811.o \
	ev811d.o ev811f.o ev810.o ev810d.o ev810f.o ev807.o ev807d.o ev807f.o \
	ev797.o ev797d.o ev797f.o di792.o di792d.o di792f.o ev796.o ev796d.o \
	ev796f.o ev817.o ev817d.o ev817f.o ev819.o ev819d.o ev819f.o ev795.o \
	ev795d.o ev795f.o ev821.o ev821d.o ev821f.o ev806.o ev806d.o ev806f.o \
	ev813.o ev813d.o ev813f.o ev816.o ev816d.o ev816f.o ev805.o ev805d.o \
	ev805f.o ev812.o ev812d.o ev812f.o 

all: Cobj25.o

Cobj25.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj25.o $(OBJECTS)
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

