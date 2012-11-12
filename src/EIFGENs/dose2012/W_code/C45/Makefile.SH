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
echo "Compiling C code in C45"
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

OBJECTS = big_file_C45_c.obj 

OLDOBJECTS =  ty1453.o ty1453d.o ty1454.o ty1454d.o ty1457.o ty1457d.o ty1458.o \
	ty1458d.o re1478.o re1478d.o li1462.o li1462d.o in1479.o in1479d.o \
	to1452.o to1452d.o li1473.o li1473d.o li1460.o li1460d.o it1477.o \
	it1477d.o it1476.o it1476d.o in1475.o in1475d.o se1468.o se1468d.o \
	dy1472.o dy1472d.o cu1464.o cu1464d.o tr1463.o tr1463d.o ta1480.o \
	ta1480d.o un1482.o un1482d.o ch1474.o ch1474d.o li1484.o li1484d.o \
	li1483.o li1483d.o co1467.o co1467d.o ac1465.o ac1465d.o bi1471.o \
	bi1471d.o fi1469.o fi1469d.o dy1481.o dy1481d.o co1461.o co1461d.o \
	ba1466.o ba1466d.o bo1470.o bo1470d.o li1459.o li1459d.o li1459f.o \
	ki1455.o ki1455d.o ki1455f.o ki1456.o ki1456d.o ki1456f.o 

all: Cobj45.o

Cobj45.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj45.o $(OBJECTS)
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

