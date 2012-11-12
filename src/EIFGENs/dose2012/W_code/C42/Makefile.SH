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
echo "Compiling C code in C42"
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

OBJECTS = big_file_C42_c.obj 

OLDOBJECTS =  sp1375.o sp1375d.o ar1364.o ar1364d.o ty1374.o ty1374d.o na1363.o \
	na1363d.o re1360.o re1360d.o ar1376.o ar1376d.o li1366.o li1366d.o \
	in1372.o in1372d.o to1353.o to1353d.o li1378.o li1378d.o it1359.o \
	it1359d.o it1358.o it1358d.o in1357.o in1357d.o se1380.o se1380d.o \
	dy1377.o dy1377d.o cu1368.o cu1368d.o tr1367.o tr1367d.o ta1373.o \
	ta1373d.o un1385.o un1385d.o ch1379.o ch1379d.o ar1354.o ar1354d.o \
	ar1354f.o co1371.o co1371d.o ac1369.o ac1369d.o bi1383.o bi1383d.o \
	fi1381.o fi1381d.o dy1384.o dy1384d.o co1365.o co1365d.o ba1370.o \
	ba1370d.o rt1356.o rt1356d.o rt1356f.o kl1361.o kl1361d.o kl1361f.o \
	bo1382.o bo1382d.o ev1355.o ev1355d.o ev1355f.o ev1362.o ev1362d.o \
	ev1362f.o 

all: Cobj42.o

Cobj42.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj42.o $(OBJECTS)
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

