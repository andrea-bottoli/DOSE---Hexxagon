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
echo "Compiling C code in C5"
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

OBJECTS = big_file_C5_c.obj 

OLDOBJECTS =  eq161.o eq161d.o eq161f.o we164.o we164d.o we164f.o we163.o \
	we163d.o we163f.o ba162.o ba162d.o ba162f.o eq160.o eq160d.o eq160f.o \
	fo159.o fo159d.o fo159f.o ev142.o ev142d.o ev142f.o ev158.o ev158d.o \
	ev158f.o we157.o we157d.o we157f.o kl137.o kl137d.o kl137f.o kl156.o \
	kl156d.o kl156f.o we155.o we155d.o we155f.o we154.o we154d.o we154f.o \
	we153.o we153d.o we153f.o we152.o we152d.o we152f.o we151.o we151d.o \
	we151f.o we150.o we150d.o we150f.o we149.o we149d.o we149f.o we148.o \
	we148d.o we148f.o ev147.o ev147d.o ev147f.o we146.o we146d.o we146f.o \
	we145.o we145d.o we145f.o we144.o we144d.o we144f.o we143.o we143d.o \
	we143f.o ev141.o ev141d.o ev141f.o uc140.o uc140d.o uc140f.o kl136.o \
	kl136d.o kl136f.o kl138.o kl138d.o kl138f.o we135.o we135d.o we135f.o \
	ev134.o ev134d.o ev134f.o we133.o we133d.o we133f.o we132.o we132d.o \
	we132f.o uc139.o uc139d.o uc139f.o 

all: Cobj5.o

Cobj5.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj5.o $(OBJECTS)
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

