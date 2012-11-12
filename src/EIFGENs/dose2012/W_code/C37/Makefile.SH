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
echo "Compiling C code in C37"
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

OBJECTS = big_file_C37_c.obj 

OLDOBJECTS =  it1215.o it1215d.o it1215f.o pr1220.o pr1220d.o pr1220f.o kl1217.o \
	kl1217d.o kl1217f.o ki1216.o ki1216d.o ki1216f.o ev1195.o ev1195d.o \
	ev1195f.o ev1209.o ev1209d.o ev1209f.o ev1207.o ev1207d.o ev1207f.o \
	ev1194.o ev1194d.o ev1194f.o ev1188.o ev1188d.o ev1188f.o ev1189.o \
	ev1189d.o ev1189f.o ev1208.o ev1208d.o ev1208f.o ev1214.o ev1214d.o \
	ev1214f.o ev1201.o ev1201d.o ev1201f.o ev1193.o ev1193d.o ev1193f.o \
	ev1210.o ev1210d.o ev1210f.o ev1205.o ev1205d.o ev1205f.o ev1192.o \
	ev1192d.o ev1192f.o ev1191.o ev1191d.o ev1191f.o ev1204.o ev1204d.o \
	ev1204f.o ev1197.o ev1197d.o ev1197f.o ev1198.o ev1198d.o ev1198f.o \
	ev1196.o ev1196d.o ev1196f.o ev1202.o ev1202d.o ev1202f.o ev1190.o \
	ev1190d.o ev1190f.o ev1206.o ev1206d.o ev1206f.o uc1218.o uc1218d.o \
	uc1218f.o ev1200.o ev1200d.o ev1200f.o ev1213.o ev1213d.o ev1213f.o \
	ev1212.o ev1212d.o ev1212f.o ev1211.o ev1211d.o ev1211f.o ev1203.o \
	ev1203d.o ev1203f.o ev1199.o ev1199d.o ev1199f.o uc1219.o uc1219d.o \
	uc1219f.o 

all: Cobj37.o

Cobj37.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj37.o $(OBJECTS)
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

