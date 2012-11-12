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
echo "Compiling C code in C20"
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

OBJECTS = big_file_C20_c.obj 

OLDOBJECTS =  we659.o we659d.o we659f.o we658.o we658d.o we658f.o we657.o \
	we657d.o we657f.o we656.o we656d.o we656f.o we655.o we655d.o we655f.o \
	we654.o we654d.o we654f.o we653.o we653d.o we653f.o we652.o we652d.o \
	we652f.o we651.o we651d.o we651f.o we650.o we650d.o we650f.o we649.o \
	we649d.o we649f.o we648.o we648d.o we648f.o we647.o we647d.o we647f.o \
	we646.o we646d.o we646f.o we645.o we645d.o we645f.o we644.o we644d.o \
	we644f.o we643.o we643d.o we643f.o we642.o we642d.o we642f.o we641.o \
	we641d.o we641f.o we640.o we640d.o we640f.o we639.o we639d.o we639f.o \
	we638.o we638d.o we638f.o we637.o we637d.o we637f.o we636.o we636d.o \
	we636f.o we635.o we635d.o we635f.o we634.o we634d.o we634f.o we633.o \
	we633d.o we633f.o we632.o we632d.o we632f.o we631.o we631d.o we631f.o \
	we630.o we630d.o we630f.o we629.o we629d.o we629f.o we628.o we628d.o \
	we628f.o we627.o we627d.o we627f.o 

all: Cobj20.o

Cobj20.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj20.o $(OBJECTS)
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

