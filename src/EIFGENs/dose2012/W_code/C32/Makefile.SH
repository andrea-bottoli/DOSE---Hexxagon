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
echo "Compiling C code in C32"
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

OBJECTS = big_file_C32_c.obj 

OLDOBJECTS =  ma1037.o ma1037d.o ma1037f.o rt1031.o rt1031d.o rt1031f.o ma1036.o \
	ma1036d.o ma1036f.o rt1032.o rt1032d.o rt1032f.o rt1030.o rt1030d.o \
	rt1030f.o rt1029.o rt1029d.o rt1029f.o tt1050.o tt1050d.o tt1050f.o \
	ev1024.o ev1024d.o ev1024f.o kl1034.o kl1034d.o kl1034f.o tt1049.o \
	tt1049d.o tt1049f.o tt1048.o tt1048d.o tt1048f.o ev1023.o ev1023d.o \
	ev1023f.o we1028.o we1028d.o we1028f.o ev1033.o ev1033d.o ev1033f.o \
	we1026.o we1026d.o we1026f.o ev1027.o ev1027d.o ev1027f.o we1025.o \
	we1025d.o we1025f.o kl1047.o kl1047d.o kl1047f.o kl1042.o kl1042d.o \
	kl1042f.o kl1046.o kl1046d.o kl1046f.o kl1041.o kl1041d.o kl1041f.o \
	kl1044.o kl1044d.o kl1044f.o kl1035.o kl1035d.o kl1035f.o kl1045.o \
	kl1045d.o kl1045f.o we1051.o we1051d.o we1051f.o kl1040.o kl1040d.o \
	kl1040f.o kl1043.o kl1043d.o kl1043f.o we1055.o we1055d.o we1055f.o \
	we1054.o we1054d.o we1054f.o we1053.o we1053d.o we1053f.o we1052.o \
	we1052d.o we1052f.o kl1039.o kl1039d.o kl1039f.o kl1038.o kl1038d.o \
	kl1038f.o 

all: Cobj32.o

Cobj32.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj32.o $(OBJECTS)
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

