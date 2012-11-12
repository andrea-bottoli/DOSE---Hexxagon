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
echo "Compiling C code in C39"
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

OBJECTS = big_file_C39_c.obj 

OLDOBJECTS =  fu1282.o fu1282d.o pr1257.o pr1257d.o pr1257f.o ty1276.o ty1276d.o \
	ty1277.o ty1277d.o ty1278.o ty1278d.o re1259.o re1259d.o li1263.o \
	li1263d.o in1258.o in1258d.o to1255.o to1255d.o to1255f.o ce1256.o \
	ce1256d.o ce1256f.o ha1271.o ha1271d.o ha1271f.o it1262.o it1262d.o \
	it1261.o it1261d.o in1260.o in1260d.o cu1266.o cu1266d.o tr1264.o \
	tr1264d.o bo1254.o bo1254d.o bo1254f.o ta1270.o ta1270d.o ta1274.o \
	ta1274d.o ha1275.o ha1275d.o ha1275f.o ta1272.o ta1272d.o ta1272f.o \
	co1269.o co1269d.o ac1267.o ac1267d.o co1265.o co1265d.o ba1268.o \
	ba1268d.o ta1273.o ta1273d.o ta1273f.o ev1285.o ev1285d.o ev1285f.o \
	di1281.o di1281d.o di1281f.o ev1284.o ev1284d.o ev1284f.o ev1286.o \
	ev1286d.o ev1286f.o ev1283.o ev1283d.o ev1283f.o ar1279.o ar1279d.o \
	ar1279f.o st1280.o st1280d.o st1280f.o 

all: Cobj39.o

Cobj39.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj39.o $(OBJECTS)
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

