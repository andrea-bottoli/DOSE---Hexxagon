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
echo "Compiling C code in C1"
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

OBJECTS = big_file_C1_c.obj 

OLDOBJECTS =  an1.o an1d.o an1f.o hx32.o hx32d.o hx32f.o kl31.o kl31d.o kl31f.o \
	we30.o we30d.o we30f.o we29.o we29d.o we29f.o ev28.o ev28d.o ev28f.o \
	we27.o we27d.o we27f.o we26.o we26d.o we26f.o we25.o we25d.o we25f.o \
	we24.o we24d.o we24f.o we23.o we23d.o we23f.o we22.o we22d.o we22f.o \
	we21.o we21d.o we21f.o we20.o we20d.o we20f.o we19.o we19d.o we19f.o \
	we18.o we18d.o we18f.o we17.o we17d.o we17f.o we16.o we16d.o we16f.o \
	we15.o we15d.o we15f.o we14.o we14d.o we14f.o ev13.o ev13d.o ev13f.o \
	eq12.o eq12d.o eq12f.o eq11.o eq11d.o eq11f.o we10.o we10d.o we10f.o \
	we9.o we9d.o we9f.o we8.o we8d.o we8f.o we7.o we7d.o we7f.o pr6.o \
	pr6d.o pr6f.o we5.o we5d.o we5f.o pr4.o pr4d.o pr4f.o fi3.o fi3d.o \
	fi3f.o we2.o we2d.o we2f.o 

all: Cobj1.o

Cobj1.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj1.o $(OBJECTS)
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

