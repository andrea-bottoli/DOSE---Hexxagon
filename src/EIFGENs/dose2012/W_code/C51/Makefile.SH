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
echo "Compiling C code in C51"
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

OBJECTS = big_file_C51_c.obj 

OLDOBJECTS =  sp1679.o sp1679d.o ar1664.o ar1664d.o ty1651.o ty1651d.o ty1652.o \
	ty1652d.o ty1653.o ty1653d.o ty1662.o ty1662d.o ty1663.o ty1663d.o \
	na1678.o na1678d.o re1675.o re1675d.o ar1680.o ar1680d.o li1666.o \
	li1666d.o in1676.o in1676d.o li1682.o li1682d.o it1674.o it1674d.o \
	it1673.o it1673d.o in1672.o in1672d.o dy1681.o dy1681d.o cu1668.o \
	cu1668d.o tr1667.o tr1667d.o ta1677.o ta1677d.o co1671.o co1671d.o \
	ac1669.o ac1669d.o co1665.o co1665d.o ba1670.o ba1670d.o rt1658.o \
	rt1658d.o rt1661.o rt1661d.o rt1650.o rt1650d.o rt1654.o rt1654d.o \
	rt1656.o rt1656d.o rt1659.o rt1659d.o rt1655.o rt1655d.o rt1657.o \
	rt1657d.o rt1660.o rt1660d.o 

all: Cobj51.o

Cobj51.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj51.o $(OBJECTS)
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

