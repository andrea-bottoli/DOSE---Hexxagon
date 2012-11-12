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
echo "Compiling C code in C16"
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

OBJECTS = big_file_C16_c.obj 

OLDOBJECTS =  eq512.o eq512d.o eq512f.o eq516.o eq516d.o eq516f.o ex507.o \
	ex507d.o ex507f.o c_505.o c_505d.o c_505f.o mi515.o mi515d.o mi515f.o \
	ev500.o ev500d.o ev500f.o eq517.o eq517d.o eq517f.o st502.o st502d.o \
	st502f.o mi520.o mi520d.o mi520f.o ev498.o ev498d.o ev498f.o ev521.o \
	ev521d.o ev521f.o ev499.o ev499d.o ev499f.o we506.o we506d.o we506f.o \
	we504.o we504d.o we504f.o da518.o da518d.o da518f.o ev501.o ev501d.o \
	ev501f.o we519.o we519d.o we519f.o we495.o we495d.o we495f.o ev497.o \
	ev497d.o ev497f.o ev496.o ev496d.o ev496f.o ev527.o ev527d.o ev527f.o \
	ev526.o ev526d.o ev526f.o ev525.o ev525d.o ev525f.o ev524.o ev524d.o \
	ev524f.o ev523.o ev523d.o ev523f.o ev522.o ev522d.o ev522f.o pr513.o \
	pr513d.o pr513f.o pr514.o pr514d.o pr514f.o pr511.o pr511d.o pr511f.o \
	pr510.o pr510d.o pr510f.o pr509.o pr509d.o pr509f.o pr508.o pr508d.o \
	pr508f.o we503.o we503d.o we503f.o 

all: Cobj16.o

Cobj16.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj16.o $(OBJECTS)
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

