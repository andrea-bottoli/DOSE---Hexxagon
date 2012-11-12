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
echo "Compiling C code in C48"
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

OBJECTS = big_file_C48_c.obj 

OLDOBJECTS =  sp1561.o sp1561d.o ar1564.o ar1564d.o ty1562.o ty1562d.o na1563.o \
	na1563d.o ar1565.o ar1565d.o li1553.o li1553d.o re1575.o re1575d.o \
	to1577.o to1577d.o ha1582.o ha1582d.o li1567.o li1567d.o it1552.o \
	it1552d.o it1551.o it1551d.o se1569.o se1569d.o dy1566.o dy1566d.o \
	cu1556.o cu1556d.o tr1554.o tr1554d.o bo1576.o bo1576d.o ta1560.o \
	ta1560d.o un1574.o un1574d.o ta1583.o ta1583d.o ch1568.o ch1568d.o \
	co1559.o co1559d.o ac1557.o ac1557d.o bi1572.o bi1572d.o fi1570.o \
	fi1570d.o dy1573.o dy1573d.o co1555.o co1555d.o ba1558.o ba1558d.o \
	bo1571.o bo1571d.o kl1578.o kl1578d.o kl1580.o kl1580d.o kl1578f.o \
	kl1579.o kl1579d.o kl1581.o kl1581d.o kl1579f.o 

all: Cobj48.o

Cobj48.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj48.o $(OBJECTS)
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

