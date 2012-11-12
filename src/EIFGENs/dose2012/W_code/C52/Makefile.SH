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
echo "Compiling C code in C52"
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

OBJECTS = big_file_C52_c.obj 

OLDOBJECTS =  ty1696.o ty1696d.o ty1697.o ty1697d.o ty1711.o ty1711d.o ty1712.o \
	ty1712d.o ty1693.o ty1693d.o ty1695.o ty1695d.o ty1698.o ty1698d.o \
	ty1703.o ty1703d.o ty1704.o ty1704d.o ty1713.o ty1713d.o ty1714.o \
	ty1714d.o re1690.o re1690d.o to1692.o to1692d.o ce1706.o ce1706d.o \
	ha1705.o ha1705d.o se1684.o se1684d.o bo1691.o bo1691d.o ta1709.o \
	ta1709d.o ha1710.o ha1710d.o un1689.o un1689d.o ta1707.o ta1707d.o \
	ch1683.o ch1683d.o bi1687.o bi1687d.o fi1685.o fi1685d.o dy1688.o \
	dy1688d.o rt1694.o rt1694d.o rt1715.o rt1715d.o ta1708.o ta1708d.o \
	bo1686.o bo1686d.o di1702.o di1702d.o ar1701.o ar1701d.o li1699.o \
	li1699d.o st1700.o st1700d.o 

all: Cobj52.o

Cobj52.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj52.o $(OBJECTS)
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

