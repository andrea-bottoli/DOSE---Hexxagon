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
echo "Compiling C code in C28"
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

OBJECTS = big_file_C28_c.obj 

OLDOBJECTS =  ev893.o ev893d.o ev893f.o ev912.o ev912d.o ev912f.o ev895.o \
	ev895d.o ev895f.o ev911.o ev911d.o ev911f.o ev891.o ev891d.o ev891f.o \
	ev909.o ev909d.o ev909f.o ev910.o ev910d.o ev910f.o ev907.o ev907d.o \
	ev907f.o ev908.o ev908d.o ev908f.o ev892.o ev892d.o ev892f.o ev905.o \
	ev905d.o ev905f.o ev906.o ev906d.o ev906f.o ev904.o ev904d.o ev904f.o \
	ev903.o ev903d.o ev903f.o ev921.o ev921d.o ev921f.o ev920.o ev920d.o \
	ev920f.o ev919.o ev919d.o ev919f.o ev902.o ev902d.o ev902f.o ev901.o \
	ev901d.o ev901f.o ev923.o ev923d.o ev923f.o ev922.o ev922d.o ev922f.o \
	ev914.o ev914d.o ev914f.o ev900.o ev900d.o ev900f.o ev899.o ev899d.o \
	ev899f.o ev918.o ev918d.o ev918f.o ev898.o ev898d.o ev898f.o ev913.o \
	ev913d.o ev913f.o ev897.o ev897d.o ev897f.o ev896.o ev896d.o ev896f.o \
	ev917.o ev917d.o ev917f.o ev916.o ev916d.o ev916f.o ev894.o ev894d.o \
	ev894f.o ev915.o ev915d.o ev915f.o 

all: Cobj28.o

Cobj28.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj28.o $(OBJECTS)
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

