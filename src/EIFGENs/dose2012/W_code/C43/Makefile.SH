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
echo "Compiling C code in C43"
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

OBJECTS = big_file_C43_c.obj 

OLDOBJECTS =  sp1407.o sp1407d.o ar1391.o ar1391d.o ty1406.o ty1406d.o na1405.o \
	na1405d.o re1402.o re1402d.o ar1408.o ar1408d.o li1393.o li1393d.o \
	re1386.o re1386d.o re1418.o re1418d.o in1403.o in1403d.o to1388.o \
	to1388d.o li1410.o li1410d.o it1401.o it1401d.o it1400.o it1400d.o \
	in1399.o in1399d.o se1412.o se1412d.o dy1409.o dy1409d.o cu1395.o \
	cu1395d.o tr1394.o tr1394d.o bo1387.o bo1387d.o ta1404.o ta1404d.o \
	un1417.o un1417d.o ch1411.o ch1411d.o co1398.o co1398d.o ac1396.o \
	ac1396d.o bi1415.o bi1415d.o fi1413.o fi1413d.o dy1416.o dy1416d.o \
	co1392.o co1392d.o ba1397.o ba1397d.o ev1389.o ev1389d.o ev1389f.o \
	bo1414.o bo1414d.o ev1390.o ev1390d.o ev1390f.o 

all: Cobj43.o

Cobj43.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj43.o $(OBJECTS)
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

