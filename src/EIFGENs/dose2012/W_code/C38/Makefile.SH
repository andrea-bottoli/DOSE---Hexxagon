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
echo "Compiling C code in C38"
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

OBJECTS = big_file_C38_c.obj 

OLDOBJECTS =  sp1226.o sp1226d.o sp1226f.o ar1233.o ar1233d.o ar1233f.o ro1221.o \
	ro1221d.o ro1221f.o fu1227.o fu1227d.o fu1227f.o ty1223.o ty1223d.o \
	ty1224.o ty1224d.o ty1223f.o ty1222.o ty1222d.o ty1225.o ty1225d.o \
	ty1222f.o na1232.o na1232d.o na1232f.o re1231.o re1231d.o re1231f.o \
	ar1243.o ar1243d.o ar1243f.o li1235.o li1235d.o li1235f.o re1253.o \
	re1253d.o re1253f.o in1241.o in1241d.o in1241f.o li1245.o li1245d.o \
	li1245f.o it1230.o it1230d.o it1230f.o it1229.o it1229d.o it1229f.o \
	in1228.o in1228d.o in1228f.o se1247.o se1247d.o se1247f.o dy1244.o \
	dy1244d.o dy1244f.o cu1237.o cu1237d.o cu1237f.o tr1236.o tr1236d.o \
	tr1236f.o ta1242.o ta1242d.o ta1242f.o un1252.o un1252d.o un1252f.o \
	ch1246.o ch1246d.o ch1246f.o co1240.o co1240d.o co1240f.o ac1238.o \
	ac1238d.o ac1238f.o bi1250.o bi1250d.o bi1250f.o fi1248.o fi1248d.o \
	fi1248f.o dy1251.o dy1251d.o dy1251f.o co1234.o co1234d.o co1234f.o \
	ba1239.o ba1239d.o ba1239f.o bo1249.o bo1249d.o bo1249f.o 

all: Cobj38.o

Cobj38.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj38.o $(OBJECTS)
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

