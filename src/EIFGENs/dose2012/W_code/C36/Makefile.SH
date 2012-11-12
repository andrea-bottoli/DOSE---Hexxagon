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
echo "Compiling C code in C36"
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

OBJECTS = big_file_C36_c.obj 

OLDOBJECTS =  ev1185.o ev1185d.o ev1185f.o ev1172.o ev1172d.o ev1172f.o ev1163.o \
	ev1163d.o ev1163f.o ev1176.o ev1176d.o ev1176f.o ev1165.o ev1165d.o \
	ev1165f.o ev1183.o ev1183d.o ev1183f.o ev1162.o ev1162d.o ev1162f.o \
	ev1164.o ev1164d.o ev1164f.o ev1179.o ev1179d.o ev1179f.o ev1174.o \
	ev1174d.o ev1174f.o ev1178.o ev1178d.o ev1178f.o ev1166.o ev1166d.o \
	ev1166f.o ev1167.o ev1167d.o ev1167f.o ev1169.o ev1169d.o ev1169f.o \
	ev1160.o ev1160d.o ev1160f.o ev1161.o ev1161d.o ev1161f.o ev1182.o \
	ev1182d.o ev1182f.o ev1181.o ev1181d.o ev1181f.o ev1180.o ev1180d.o \
	ev1180f.o ev1175.o ev1175d.o ev1175f.o ev1187.o ev1187d.o ev1187f.o \
	ev1168.o ev1168d.o ev1168f.o ev1171.o ev1171d.o ev1171f.o ev1186.o \
	ev1186d.o ev1186f.o ev1177.o ev1177d.o ev1177f.o ev1173.o ev1173d.o \
	ev1173f.o ev1156.o ev1156d.o ev1156f.o ev1170.o ev1170d.o ev1170f.o \
	ev1159.o ev1159d.o ev1159f.o ev1155.o ev1155d.o ev1155f.o ev1158.o \
	ev1158d.o ev1158f.o ev1157.o ev1157d.o ev1157f.o ev1184.o ev1184d.o \
	ev1184f.o 

all: Cobj36.o

Cobj36.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj36.o $(OBJECTS)
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

