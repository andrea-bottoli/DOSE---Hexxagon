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
echo "Compiling C code in C35"
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

OBJECTS = big_file_C35_c.obj 

OLDOBJECTS =  ev1151.o ev1151d.o ev1151f.o ev1149.o ev1149d.o ev1149f.o ev1133.o \
	ev1133d.o ev1133f.o ev1147.o ev1147d.o ev1147f.o we1146.o we1146d.o \
	we1146f.o we1131.o we1131d.o we1131f.o ev1143.o ev1143d.o ev1143f.o \
	we1145.o we1145d.o we1145f.o ev1148.o ev1148d.o ev1148f.o we1132.o \
	we1132d.o we1132f.o ev1152.o ev1152d.o ev1152f.o we1122.o we1122d.o \
	we1122f.o we1130.o we1130d.o we1130f.o we1142.o we1142d.o we1142f.o \
	we1137.o we1137d.o we1137f.o ev1128.o ev1128d.o ev1128f.o we1144.o \
	we1144d.o we1144f.o ev1154.o ev1154d.o ev1154f.o we1125.o we1125d.o \
	we1125f.o we1138.o we1138d.o we1138f.o we1129.o we1129d.o we1129f.o \
	we1126.o we1126d.o we1126f.o we1136.o we1136d.o we1136f.o ev1150.o \
	ev1150d.o ev1150f.o we1134.o we1134d.o we1134f.o we1127.o we1127d.o \
	we1127f.o we1141.o we1141d.o we1141f.o we1124.o we1124d.o we1124f.o \
	we1123.o we1123d.o we1123f.o ev1153.o ev1153d.o ev1153f.o we1135.o \
	we1135d.o we1135f.o ev1140.o ev1140d.o ev1140f.o we1139.o we1139d.o \
	we1139f.o 

all: Cobj35.o

Cobj35.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj35.o $(OBJECTS)
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

