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
echo "Compiling C code in C15"
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

OBJECTS = big_file_C15_c.obj 

OLDOBJECTS =  ar476.o ar476d.o ar476f.o in477.o in477d.o in477f.o pr472.o \
	pr472d.o pr472f.o cu473.o cu473d.o cu473f.o ar475.o ar475d.o ar475f.o \
	ha474.o ha474d.o ha474f.o kl488.o kl488d.o kl488f.o ev494.o ev494d.o \
	ev494f.o un490.o un490d.o un490f.o we468.o we468d.o we468f.o we467.o \
	we467d.o we467f.o ev470.o ev470d.o ev470f.o ev491.o ev491d.o ev491f.o \
	we486.o we486d.o we486f.o we466.o we466d.o we466f.o we485.o we485d.o \
	we485f.o ev463.o ev463d.o ev463f.o id492.o id492d.o id492f.o ra471.o \
	ra471d.o ra471f.o we493.o we493d.o we493f.o we465.o we465d.o we465f.o \
	we469.o we469d.o we469f.o we483.o we483d.o we483f.o we464.o we464d.o \
	we464f.o we462.o we462d.o we462f.o we482.o we482d.o we482f.o we481.o \
	we481d.o we481f.o we480.o we480d.o we480f.o we487.o we487d.o we487f.o \
	uc479.o uc479d.o uc479f.o ki489.o ki489d.o ki489f.o we484.o we484d.o \
	we484f.o ac478.o ac478d.o ac478f.o 

all: Cobj15.o

Cobj15.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj15.o $(OBJECTS)
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

