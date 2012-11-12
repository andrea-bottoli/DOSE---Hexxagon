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
echo "Compiling C code in C34"
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

OBJECTS = big_file_C34_c.obj 

OLDOBJECTS =  we1107.o we1107d.o we1107f.o ev1120.o ev1120d.o ev1120f.o we1101.o \
	we1101d.o we1101f.o we1100.o we1100d.o we1100f.o we1112.o we1112d.o \
	we1112f.o ev1105.o ev1105d.o ev1105f.o ev1116.o ev1116d.o ev1116f.o \
	we1093.o we1093d.o we1093f.o we1099.o we1099d.o we1099f.o we1117.o \
	we1117d.o we1117f.o ev1119.o ev1119d.o ev1119f.o we1108.o we1108d.o \
	we1108f.o we1098.o we1098d.o we1098f.o ev1106.o ev1106d.o ev1106f.o \
	we1121.o we1121d.o we1121f.o ev1115.o ev1115d.o ev1115f.o ev1091.o \
	ev1091d.o ev1091f.o ev1114.o ev1114d.o ev1114f.o we1104.o we1104d.o \
	we1104f.o we1097.o we1097d.o we1097f.o we1113.o we1113d.o we1113f.o \
	ev1118.o ev1118d.o ev1118f.o we1109.o we1109d.o we1109f.o we1096.o \
	we1096d.o we1096f.o ev1092.o ev1092d.o ev1092f.o we1110.o we1110d.o \
	we1110f.o we1111.o we1111d.o we1111f.o we1103.o we1103d.o we1103f.o \
	we1095.o we1095d.o we1095f.o we1094.o we1094d.o we1094f.o we1102.o \
	we1102d.o we1102f.o we1090.o we1090d.o we1090f.o we1089.o we1089d.o \
	we1089f.o 

all: Cobj34.o

Cobj34.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj34.o $(OBJECTS)
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

