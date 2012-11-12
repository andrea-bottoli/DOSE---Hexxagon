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
echo "Compiling C code in C6"
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

OBJECTS = big_file_C6_c.obj 

OLDOBJECTS =  we197.o we197d.o we197f.o we196.o we196d.o we196f.o we195.o \
	we195d.o we195f.o we194.o we194d.o we194f.o we193.o we193d.o we193f.o \
	we192.o we192d.o we192f.o we191.o we191d.o we191f.o we190.o we190d.o \
	we190f.o we189.o we189d.o we189f.o we188.o we188d.o we188f.o ev187.o \
	ev187d.o ev187f.o we186.o we186d.o we186f.o we185.o we185d.o we185f.o \
	we184.o we184d.o we184f.o we183.o we183d.o we183f.o ev182.o ev182d.o \
	ev182f.o we181.o we181d.o we181f.o we180.o we180d.o we180f.o we179.o \
	we179d.o we179f.o we178.o we178d.o we178f.o we177.o we177d.o we177f.o \
	we176.o we176d.o we176f.o we175.o we175d.o we175f.o ev174.o ev174d.o \
	ev174f.o we173.o we173d.o we173f.o we172.o we172d.o we172f.o we171.o \
	we171d.o we171f.o we170.o we170d.o we170f.o ev169.o ev169d.o ev169f.o \
	ev168.o ev168d.o ev168f.o ev167.o ev167d.o ev167f.o ev166.o ev166d.o \
	ev166f.o we165.o we165d.o we165f.o 

all: Cobj6.o

Cobj6.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj6.o $(OBJECTS)
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

