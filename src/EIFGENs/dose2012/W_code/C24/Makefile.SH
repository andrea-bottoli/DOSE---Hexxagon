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
echo "Compiling C code in C24"
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

OBJECTS = big_file_C24_c.obj 

OLDOBJECTS =  po779.o po779d.o po780.o po780d.o po779f.o st788.o st788d.o \
	st788f.o st787.o st787d.o st787f.o re764.o re764d.o re765.o re765d.o \
	re764f.o re761.o re761d.o re762.o re762d.o re761f.o na759.o na759d.o \
	ch767.o ch767d.o ch768.o ch768d.o ch767f.o ch773.o ch773d.o ch774.o \
	ch774d.o ch773f.o bo770.o bo770d.o bo771.o bo771d.o bo770f.o po778.o \
	po778d.o po778f.o ch772.o ch772d.o ch772f.o bo769.o bo769d.o bo769f.o \
	ch766.o ch766d.o ch766f.o re763.o re763d.o re763f.o re760.o re760d.o \
	re760f.o st786.o st786d.o st786f.o re781.o re781d.o re781f.o re784.o \
	re784d.o re784f.o re783.o re783d.o re783f.o im785.o im785d.o im785f.o \
	im782.o im782d.o im782f.o pa791.o pa791d.o pa791f.o ev789.o ev789d.o \
	ev789f.o kl790.o kl790d.o kl790f.o ev777.o ev777d.o ev777f.o ev776.o \
	ev776d.o ev776f.o ev775.o ev775d.o ev775f.o 

all: Cobj24.o

Cobj24.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj24.o $(OBJECTS)
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

