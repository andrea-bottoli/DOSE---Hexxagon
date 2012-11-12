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
echo "Compiling C code in C49"
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

OBJECTS = big_file_C49_c.obj 

OLDOBJECTS =  sp1603.o sp1603d.o ar1609.o ar1609d.o ty1593.o ty1593d.o ty1594.o \
	ty1594d.o ty1589.o ty1589d.o ty1590.o ty1590d.o ty1595.o ty1595d.o \
	ty1601.o ty1601d.o ty1602.o ty1602d.o na1608.o na1608d.o re1607.o \
	re1607d.o li1611.o li1611d.o li1596.o li1596d.o it1606.o it1606d.o \
	it1605.o it1605d.o in1604.o in1604d.o cu1613.o cu1613d.o tr1612.o \
	tr1612d.o ha1585.o ha1585d.o li1598.o li1598d.o li1599.o li1599d.o \
	li1597.o li1597d.o co1616.o co1616d.o ac1614.o ac1614d.o co1610.o \
	co1610d.o ba1615.o ba1615d.o rt1586.o rt1586d.o rt1588.o rt1588d.o \
	rt1587.o rt1587d.o ta1584.o ta1584d.o ki1591.o ki1591d.o ki1592.o \
	ki1592d.o ki1600.o ki1600d.o ki1600f.o 

all: Cobj49.o

Cobj49.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj49.o $(OBJECTS)
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

