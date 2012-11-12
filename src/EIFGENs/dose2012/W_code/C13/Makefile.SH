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
echo "Compiling C code in C13"
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

OBJECTS = big_file_C13_c.obj 

OLDOBJECTS =  ex416.o ex416d.o ex416f.o in413.o in413d.o in413f.o it411.o \
	it411d.o it411f.o re428.o re428d.o re428f.o re427.o re427d.o re427f.o \
	ex426.o ex426d.o ex426f.o co424.o co424d.o co424f.o op423.o op423d.o \
	op423f.o de417.o de417d.o de417f.o fl420.o fl420d.o fl420f.o op422.o \
	op422d.o op422f.o ex415.o ex415d.o ex415f.o da405.o da405d.o da405f.o \
	so412.o so412d.o so412f.o re410.o re410d.o re410f.o co406.o co406d.o \
	co406f.o ob425.o ob425d.o ob425f.o op421.o op421d.o op421f.o ha419.o \
	ha419d.o ha419f.o ev409.o ev409d.o ev409f.o da404.o da404d.o da404f.o \
	ti403.o ti403d.o ti403f.o ab408.o ab408d.o ab408f.o du402.o du402d.o \
	du402f.o ne414.o ne414d.o ne414f.o pa401.o pa401d.o pa401f.o ma418.o \
	ma418d.o ma418f.o ev400.o ev400d.o ev400f.o ev397.o ev397d.o ev397f.o \
	ev399.o ev399d.o ev399f.o gc396.o gc396d.o gc396f.o ev398.o ev398d.o \
	ev398f.o kl407.o kl407d.o kl407f.o 

all: Cobj13.o

Cobj13.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj13.o $(OBJECTS)
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

