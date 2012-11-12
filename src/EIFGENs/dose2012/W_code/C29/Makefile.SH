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
echo "Compiling C code in C29"
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

OBJECTS = big_file_C29_c.obj 

OLDOBJECTS =  ev953.o ev953d.o ev953f.o ev947.o ev947d.o ev947f.o ev946.o \
	ev946d.o ev946f.o ev941.o ev941d.o ev941f.o ev934.o ev934d.o ev934f.o \
	ev935.o ev935d.o ev935f.o ev943.o ev943d.o ev943f.o ev936.o ev936d.o \
	ev936f.o ev925.o ev925d.o ev925f.o ev949.o ev949d.o ev949f.o ev956.o \
	ev956d.o ev956f.o ev948.o ev948d.o ev948f.o ev955.o ev955d.o ev955f.o \
	ev931.o ev931d.o ev931f.o ev950.o ev950d.o ev950f.o ev952.o ev952d.o \
	ev952f.o ev937.o ev937d.o ev937f.o ev933.o ev933d.o ev933f.o ev940.o \
	ev940d.o ev940f.o ev938.o ev938d.o ev938f.o ev927.o ev927d.o ev927f.o \
	ev924.o ev924d.o ev924f.o ev939.o ev939d.o ev939f.o ev954.o ev954d.o \
	ev954f.o ev932.o ev932d.o ev932f.o ev930.o ev930d.o ev930f.o ev926.o \
	ev926d.o ev926f.o ev942.o ev942d.o ev942f.o ev945.o ev945d.o ev945f.o \
	ev951.o ev951d.o ev951f.o ev929.o ev929d.o ev929f.o ev928.o ev928d.o \
	ev928f.o ev944.o ev944d.o ev944f.o 

all: Cobj29.o

Cobj29.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj29.o $(OBJECTS)
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

