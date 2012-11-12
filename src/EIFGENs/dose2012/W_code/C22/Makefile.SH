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
echo "Compiling C code in C22"
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

OBJECTS = big_file_C22_c.obj 

OLDOBJECTS =  we719.o we719d.o we719f.o kl700.o kl700d.o kl700f.o we725.o \
	we725d.o we725f.o we723.o we723d.o we723f.o we722.o we722d.o we722f.o \
	we696.o we696d.o we696f.o we699.o we699d.o we699f.o we697.o we697d.o \
	we697f.o we713.o we713d.o we713f.o kl705.o kl705d.o kl705f.o we724.o \
	we724d.o we724f.o we718.o we718d.o we718f.o we721.o we721d.o we721f.o \
	we694.o we694d.o we694f.o we693.o we693d.o we693f.o we698.o we698d.o \
	we698f.o we695.o we695d.o we695f.o ev717.o ev717d.o ev717f.o we716.o \
	we716d.o we716f.o we720.o we720d.o we720f.o ki711.o ki711d.o ki711f.o \
	ki710.o ki710d.o ki710f.o kl704.o kl704d.o kl704f.o uc703.o uc703d.o \
	uc703f.o uc702.o uc702d.o uc702f.o we715.o we715d.o we715f.o ki709.o \
	ki709d.o ki709f.o ki708.o ki708d.o ki708f.o kl712.o kl712d.o kl712f.o \
	uc701.o uc701d.o uc701f.o ki707.o ki707d.o ki707f.o ki706.o ki706d.o \
	ki706f.o we714.o we714d.o we714f.o 

all: Cobj22.o

Cobj22.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj22.o $(OBJECTS)
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

