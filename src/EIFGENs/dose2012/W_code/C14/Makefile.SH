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
echo "Compiling C code in C14"
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

OBJECTS = big_file_C14_c.obj 

OLDOBJECTS =  ex455.o ex455d.o ex455f.o pl457.o pl457d.o pl457f.o ei431.o \
	ei431d.o ei431f.o cr447.o cr447d.o cr447f.o vo444.o vo444d.o vo444f.o \
	io439.o io439d.o io439f.o mi438.o mi438d.o mi438f.o se437.o se437d.o \
	se437f.o ad446.o ad446d.o ad446f.o ol430.o ol430d.o ol430f.o ex435.o \
	ex435d.o ex435f.o vo443.o vo443d.o vo443f.o no434.o no434d.o no434f.o \
	pr454.o pr454d.o pr454f.o po453.o po453d.o po453f.o in452.o in452d.o \
	in452f.o ch451.o ch451d.o ch451f.o ro442.o ro442d.o ro442f.o ba441.o \
	ba441d.o ba441f.o va450.o va450d.o va450f.o lo449.o lo449d.o lo449f.o \
	eq456.o eq456d.o eq456f.o as448.o as448d.o as448f.o sy429.o sy429d.o \
	sy429f.o ei445.o ei445d.o ei445f.o la440.o la440d.o la440f.o da436.o \
	da436d.o da436f.o ei433.o ei433d.o ei433f.o ei432.o ei432d.o ei432f.o \
	we461.o we461d.o we461f.o we460.o we460d.o we460f.o we459.o we459d.o \
	we459f.o kl458.o kl458d.o kl458f.o 

all: Cobj14.o

Cobj14.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj14.o $(OBJECTS)
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

