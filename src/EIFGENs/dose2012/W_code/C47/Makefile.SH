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
echo "Compiling C code in C47"
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

OBJECTS = big_file_C47_c.obj 

OLDOBJECTS =  ty1522.o ty1522d.o ty1523.o ty1523d.o ty1536.o ty1536d.o ty1537.o \
	ty1537d.o ty1544.o ty1544d.o ty1545.o ty1545d.o ty1524.o ty1524d.o \
	ty1538.o ty1538d.o ty1540.o ty1540d.o ty1541.o ty1541d.o ty1543.o \
	ty1543d.o ty1546.o ty1546d.o ty1547.o ty1547d.o re1549.o re1549d.o \
	in1548.o in1548d.o ha1527.o ha1527d.o in1550.o in1550d.o ta1530.o \
	ta1530d.o ha1531.o ha1531d.o ta1528.o ta1528d.o pr1526.o pr1526d.o \
	pr1526f.o rt1532.o rt1532d.o rt1542.o rt1542d.o rt1521.o rt1521d.o \
	rt1533.o rt1533d.o rt1535.o rt1535d.o rt1525.o rt1525d.o rt1534.o \
	rt1534d.o rt1539.o rt1539d.o ta1529.o ta1529d.o he1519.o he1519d.o \
	he1519f.o pr1520.o pr1520d.o pr1520f.o li1518.o li1518d.o 

all: Cobj47.o

Cobj47.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj47.o $(OBJECTS)
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

