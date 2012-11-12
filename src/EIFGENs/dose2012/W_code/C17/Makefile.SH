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
echo "Compiling C code in C17"
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

OBJECTS = big_file_C17_c.obj 

OLDOBJECTS =  tt552.o tt552d.o tt552f.o la542.o la542d.o la542f.o du551.o \
	du551d.o du551f.o g2550.o g2550d.o g2550f.o b8549.o b8549d.o b8549f.o \
	ca548.o ca548d.o ca548f.o hi547.o hi547d.o hi547f.o hx546.o hx546d.o \
	hx546f.o in545.o in545d.o in545f.o xx544.o xx544d.o xx544f.o ev540.o \
	ev540d.o ev540f.o ev539.o ev539d.o ev539f.o ev538.o ev538d.o ev538f.o \
	ev537.o ev537d.o ev537f.o kl555.o kl555d.o kl555f.o ev536.o ev536d.o \
	ev536f.o we553.o we553d.o we553f.o ev535.o ev535d.o ev535f.o ev534.o \
	ev534d.o ev534f.o ev533.o ev533d.o ev533f.o ev532.o ev532d.o ev532f.o \
	ev531.o ev531d.o ev531f.o kl557.o kl557d.o kl557f.o uc556.o uc556d.o \
	uc556f.o we554.o we554d.o we554f.o ev530.o ev530d.o ev530f.o ev529.o \
	ev529d.o ev529f.o kl541.o kl541d.o kl541f.o ev528.o ev528d.o ev528f.o \
	ki559.o ki559d.o ki559f.o ki560.o ki560d.o ki560f.o ki558.o ki558d.o \
	ki558f.o do543.o do543d.o do543f.o 

all: Cobj17.o

Cobj17.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj17.o $(OBJECTS)
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

