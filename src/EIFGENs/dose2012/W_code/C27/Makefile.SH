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
echo "Compiling C code in C27"
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

OBJECTS = big_file_C27_c.obj 

OLDOBJECTS =  ev870.o ev870d.o ev870f.o ev861.o ev861d.o ev861f.o ev868.o \
	ev868d.o ev868f.o ev890.o ev890d.o ev890f.o ev860.o ev860d.o ev860f.o \
	ev889.o ev889d.o ev889f.o ev864.o ev864d.o ev864f.o ev877.o ev877d.o \
	ev877f.o ev882.o ev882d.o ev882f.o ev888.o ev888d.o ev888f.o ev859.o \
	ev859d.o ev859f.o ev873.o ev873d.o ev873f.o ev862.o ev862d.o ev862f.o \
	ev871.o ev871d.o ev871f.o ev869.o ev869d.o ev869f.o ev865.o ev865d.o \
	ev865f.o ev872.o ev872d.o ev872f.o ev880.o ev880d.o ev880f.o ev879.o \
	ev879d.o ev879f.o ev867.o ev867d.o ev867f.o ev886.o ev886d.o ev886f.o \
	ev885.o ev885d.o ev885f.o ev881.o ev881d.o ev881f.o ev887.o ev887d.o \
	ev887f.o ev884.o ev884d.o ev884f.o ev858.o ev858d.o ev858f.o ev876.o \
	ev876d.o ev876f.o ev875.o ev875d.o ev875f.o ev874.o ev874d.o ev874f.o \
	ev878.o ev878d.o ev878f.o ev866.o ev866d.o ev866f.o ev883.o ev883d.o \
	ev883f.o ev863.o ev863d.o ev863f.o 

all: Cobj27.o

Cobj27.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj27.o $(OBJECTS)
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

