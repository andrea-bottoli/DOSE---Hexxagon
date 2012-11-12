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
echo "Compiling C code in C41"
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

OBJECTS = big_file_C41_c.obj 

OLDOBJECTS =  sp1324.o sp1324d.o ar1331.o ar1331d.o ty1325.o ty1325d.o na1330.o \
	na1330d.o re1329.o re1329d.o ar1341.o ar1341d.o li1333.o li1333d.o \
	re1351.o re1351d.o in1339.o in1339d.o li1343.o li1343d.o it1328.o \
	it1328d.o it1327.o it1327d.o in1326.o in1326d.o se1345.o se1345d.o \
	dy1342.o dy1342d.o cu1335.o cu1335d.o tr1334.o tr1334d.o bo1352.o \
	bo1352d.o ta1340.o ta1340d.o un1350.o un1350d.o ch1344.o ch1344d.o \
	ev1321.o ev1321d.o ev1321f.o co1338.o co1338d.o ac1336.o ac1336d.o \
	bi1348.o bi1348d.o fi1346.o fi1346d.o dy1349.o dy1349d.o co1332.o \
	co1332d.o ba1337.o ba1337d.o ar1320.o ar1320d.o ar1320f.o ac1322.o \
	ac1322d.o ac1322f.o bo1347.o bo1347d.o in1323.o in1323d.o in1323f.o 

all: Cobj41.o

Cobj41.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj41.o $(OBJECTS)
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

