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
echo "Compiling C code in C46"
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

OBJECTS = big_file_C46_c.obj 

OLDOBJECTS =  sp1489.o sp1489d.o ar1492.o ar1492d.o ty1500.o ty1500d.o ty1501.o \
	ty1501d.o ty1505.o ty1505d.o ty1506.o ty1506d.o ty1511.o ty1511d.o \
	ty1512.o ty1512d.o ty1490.o ty1490d.o ty1498.o ty1498d.o ty1502.o \
	ty1502d.o ty1507.o ty1507d.o ty1513.o ty1513d.o na1491.o na1491d.o \
	ar1493.o ar1493d.o re1494.o re1494d.o to1496.o to1496d.o ce1485.o \
	ce1485d.o se1503.o se1503d.o se1503f.o bo1495.o bo1495d.o li1486.o \
	li1486d.o bi1515.o bi1515d.o bi1515f.o rt1504.o rt1504d.o rt1510.o \
	rt1510d.o rt1504f.o rt1508.o rt1508d.o rt1508f.o rt1509.o rt1509d.o \
	rt1514.o rt1514d.o bi1517.o bi1517d.o bi1517f.o di1497.o di1497d.o \
	ar1488.o ar1488d.o we1499.o we1499d.o we1499f.o tr1516.o tr1516d.o \
	tr1516f.o st1487.o st1487d.o 

all: Cobj46.o

Cobj46.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj46.o $(OBJECTS)
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

