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
echo "Compiling C code in C19"
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

OBJECTS = big_file_C19_c.obj 

OLDOBJECTS =  we610.o we610d.o we610f.o ev597.o ev597d.o ev597f.o we608.o \
	we608d.o we608f.o we607.o we607d.o we607f.o we621.o we621d.o we621f.o \
	we618.o we618d.o we618f.o we606.o we606d.o we606f.o we620.o we620d.o \
	we620f.o we609.o we609d.o we609f.o we605.o we605d.o we605f.o we596.o \
	we596d.o we596f.o we623.o we623d.o we623f.o we603.o we603d.o we603f.o \
	we611.o we611d.o we611f.o we617.o we617d.o we617f.o we616.o we616d.o \
	we616f.o we615.o we615d.o we615f.o we614.o we614d.o we614f.o we613.o \
	we613d.o we613f.o we619.o we619d.o we619f.o we612.o we612d.o we612f.o \
	we601.o we601d.o we601f.o we600.o we600d.o we600f.o we622.o we622d.o \
	we622f.o we604.o we604d.o we604f.o we598.o we598d.o we598f.o we599.o \
	we599d.o we599f.o we595.o we595d.o we595f.o we602.o we602d.o we602f.o \
	we594.o we594d.o we594f.o we626.o we626d.o we626f.o we625.o we625d.o \
	we625f.o we624.o we624d.o we624f.o 

all: Cobj19.o

Cobj19.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj19.o $(OBJECTS)
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

