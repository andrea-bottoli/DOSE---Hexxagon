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
echo "Compiling C code in C40"
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

OBJECTS = big_file_C40_c.obj 

OLDOBJECTS =  sp1305.o sp1305d.o ar1308.o ar1308d.o ty1306.o ty1306d.o eq1294.o \
	eq1294d.o eq1294f.o na1307.o na1307d.o ar1309.o ar1309d.o re1316.o \
	re1316d.o to1318.o to1318d.o ce1299.o ce1299d.o ha1298.o ha1298d.o \
	li1311.o li1311d.o li1288.o li1288d.o li1288f.o se1313.o se1313d.o \
	dy1310.o dy1310d.o bo1317.o bo1317d.o ha1319.o ha1319d.o un1302.o \
	un1302d.o ta1300.o ta1300d.o ch1312.o ch1312d.o li1291.o li1291d.o \
	li1291f.o li1290.o li1290d.o li1290f.o li1289.o li1289d.o li1289f.o \
	ev1295.o ev1295d.o ev1295f.o bi1314.o bi1314d.o fi1303.o fi1303d.o \
	dy1315.o dy1315d.o ta1301.o ta1301d.o ev1287.o ev1287d.o ev1287f.o \
	bo1304.o bo1304d.o ac1296.o ac1296d.o ac1296f.o qu1293.o qu1293d.o \
	qu1293f.o in1297.o in1297d.o in1297f.o li1292.o li1292d.o li1292f.o 

all: Cobj40.o

Cobj40.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj40.o $(OBJECTS)
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

