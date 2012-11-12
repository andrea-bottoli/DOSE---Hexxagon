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
echo "Compiling C code in C44"
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

OBJECTS = big_file_C44_c.obj 

OLDOBJECTS =  sp1424.o sp1424d.o ar1430.o ar1430d.o ty1422.o ty1422d.o ty1423.o \
	ty1423d.o na1429.o na1429d.o re1428.o re1428d.o ar1440.o ar1440d.o \
	li1432.o li1432d.o re1450.o re1450d.o in1438.o in1438d.o to1420.o \
	to1420d.o li1442.o li1442d.o it1427.o it1427d.o it1426.o it1426d.o \
	in1425.o in1425d.o se1444.o se1444d.o dy1441.o dy1441d.o cu1434.o \
	cu1434d.o tr1433.o tr1433d.o bo1419.o bo1419d.o bo1451.o bo1451d.o \
	ta1439.o ta1439d.o un1449.o un1449d.o ch1443.o ch1443d.o co1437.o \
	co1437d.o ac1435.o ac1435d.o bi1447.o bi1447d.o fi1445.o fi1445d.o \
	dy1448.o dy1448d.o co1431.o co1431d.o ba1436.o ba1436d.o bo1446.o \
	bo1446d.o kl1421.o kl1421d.o kl1421f.o 

all: Cobj44.o

Cobj44.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj44.o $(OBJECTS)
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

