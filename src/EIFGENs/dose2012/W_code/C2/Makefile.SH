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
echo "Compiling C code in C2"
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

OBJECTS = big_file_C2_c.obj 

OLDOBJECTS =  tt65.o tt65d.o tt65f.o ev64.o ev64d.o ev64f.o kl63.o kl63d.o \
	kl63f.o ev62.o ev62d.o ev62f.o we61.o we61d.o we61f.o we60.o we60d.o \
	we60f.o we59.o we59d.o we59f.o we58.o we58d.o we58f.o we57.o we57d.o \
	we57f.o we56.o we56d.o we56f.o we55.o we55d.o we55f.o we54.o we54d.o \
	we54f.o we53.o we53d.o we53f.o we52.o we52d.o we52f.o we51.o we51d.o \
	we51f.o we50.o we50d.o we50f.o we49.o we49d.o we49f.o we48.o we48d.o \
	we48f.o ev47.o ev47d.o ev47f.o we46.o we46d.o we46f.o we45.o we45d.o \
	we45f.o we44.o we44d.o we44f.o we43.o we43d.o we43f.o we42.o we42d.o \
	we42f.o we41.o we41d.o we41f.o we40.o we40d.o we40f.o we39.o we39d.o \
	we39f.o we38.o we38d.o we38f.o we37.o we37d.o we37f.o we36.o we36d.o \
	we36f.o we35.o we35d.o we35f.o we34.o we34d.o we34f.o hx33.o hx33d.o \
	hx33f.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
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

