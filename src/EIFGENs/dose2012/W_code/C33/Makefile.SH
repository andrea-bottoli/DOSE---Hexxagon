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
echo "Compiling C code in C33"
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

OBJECTS = big_file_C33_c.obj 

OLDOBJECTS =  da1079.o da1079d.o da1079f.o eq1088.o eq1088d.o eq1088f.o ev1076.o \
	ev1076d.o ev1076f.o da1074.o da1074d.o da1074f.o da1072.o da1072d.o \
	da1072f.o ti1070.o ti1070d.o ti1070f.o da1077.o da1077d.o da1077f.o \
	ev1068.o ev1068d.o ev1068f.o we1085.o we1085d.o we1085f.o ev1083.o \
	ev1083d.o ev1083f.o ev1086.o ev1086d.o ev1086f.o ev1082.o ev1082d.o \
	ev1082f.o we1080.o we1080d.o we1080f.o kl1067.o kl1067d.o kl1067f.o \
	kl1066.o kl1066d.o kl1066f.o kl1065.o kl1065d.o kl1065f.o we1075.o \
	we1075d.o we1075f.o da1078.o da1078d.o da1078f.o fi1073.o fi1073d.o \
	fi1073f.o da1071.o da1071d.o da1071f.o ti1069.o ti1069d.o ti1069f.o \
	we1081.o we1081d.o we1081f.o we1084.o we1084d.o we1084f.o ki1064.o \
	ki1064d.o ki1064f.o we1062.o we1062d.o we1062f.o we1063.o we1063d.o \
	we1063f.o uc1087.o uc1087d.o uc1087f.o we1061.o we1061d.o we1061f.o \
	we1060.o we1060d.o we1060f.o we1059.o we1059d.o we1059f.o we1058.o \
	we1058d.o we1058f.o we1057.o we1057d.o we1057f.o we1056.o we1056d.o \
	we1056f.o 

all: Cobj33.o

Cobj33.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj33.o $(OBJECTS)
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

