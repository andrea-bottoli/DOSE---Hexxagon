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
echo "Compiling C code in C30"
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

OBJECTS = big_file_C30_c.obj 

OLDOBJECTS =  ev986.o ev986d.o ev986f.o ev959.o ev959d.o ev959f.o ev982.o \
	ev982d.o ev982f.o ev973.o ev973d.o ev973f.o ev984.o ev984d.o ev984f.o \
	ev983.o ev983d.o ev983f.o ev957.o ev957d.o ev957f.o ev963.o ev963d.o \
	ev963f.o ev962.o ev962d.o ev962f.o ev980.o ev980d.o ev980f.o ev972.o \
	ev972d.o ev972f.o ev976.o ev976d.o ev976f.o ev961.o ev961d.o ev961f.o \
	ev966.o ev966d.o ev966f.o ev989.o ev989d.o ev989f.o ev981.o ev981d.o \
	ev981f.o ev965.o ev965d.o ev965f.o ev960.o ev960d.o ev960f.o ev971.o \
	ev971d.o ev971f.o ev985.o ev985d.o ev985f.o ev974.o ev974d.o ev974f.o \
	ev979.o ev979d.o ev979f.o ev968.o ev968d.o ev968f.o ev969.o ev969d.o \
	ev969f.o ev987.o ev987d.o ev987f.o ev967.o ev967d.o ev967f.o ev977.o \
	ev977d.o ev977f.o ev964.o ev964d.o ev964f.o ev970.o ev970d.o ev970f.o \
	ev958.o ev958d.o ev958f.o ev978.o ev978d.o ev978f.o ev988.o ev988d.o \
	ev988f.o ev975.o ev975d.o ev975f.o 

all: Cobj30.o

Cobj30.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj30.o $(OBJECTS)
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

