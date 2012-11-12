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
echo "Compiling C code in C50"
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

OBJECTS = big_file_C50_c.obj 

OLDOBJECTS =  ty1632.o ty1632d.o ty1633.o ty1633d.o ty1642.o ty1642d.o ty1643.o \
	ty1643d.o ty1634.o ty1634d.o ty1644.o ty1644d.o ar1619.o ar1619d.o \
	re1629.o re1629d.o in1617.o in1617d.o to1631.o to1631d.o li1621.o \
	li1621d.o se1623.o se1623d.o dy1620.o dy1620d.o bo1630.o bo1630d.o \
	ta1618.o ta1618d.o co1635.o co1635d.o co1635f.o un1628.o un1628d.o \
	ch1622.o ch1622d.o ev1638.o ev1638d.o bi1626.o bi1626d.o fi1624.o \
	fi1624d.o dy1627.o dy1627d.o co1636.o co1636d.o co1636f.o rt1641.o \
	rt1641d.o rt1645.o rt1645d.o rt1647.o rt1647d.o rt1646.o rt1646d.o \
	ar1648.o ar1648d.o kl1649.o kl1649d.o ac1639.o ac1639d.o bo1625.o \
	bo1625d.o in1637.o in1637d.o in1637f.o in1640.o in1640d.o 

all: Cobj50.o

Cobj50.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj50.o $(OBJECTS)
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

