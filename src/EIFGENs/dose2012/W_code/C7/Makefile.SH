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
echo "Compiling C code in C7"
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

OBJECTS = big_file_C7_c.obj 

OLDOBJECTS =  ob223.o ob223d.o ob223f.o in230.o in230d.o in230f.o ev229.o \
	ev229d.o ev229f.o ev228.o ev228d.o ev228f.o ev227.o ev227d.o ev227f.o \
	ev226.o ev226d.o ev226f.o ev225.o ev225d.o ev225f.o ev224.o ev224d.o \
	ev224f.o ob222.o ob222d.o ob222f.o we221.o we221d.o we221f.o ev220.o \
	ev220d.o ev220f.o kl219.o kl219d.o kl219f.o uc218.o uc218d.o uc218f.o \
	we217.o we217d.o we217f.o we216.o we216d.o we216f.o we215.o we215d.o \
	we215f.o ev214.o ev214d.o ev214f.o ev213.o ev213d.o ev213f.o kl212.o \
	kl212d.o kl212f.o ev211.o ev211d.o ev211f.o ev210.o ev210d.o ev210f.o \
	ev209.o ev209d.o ev209f.o ev208.o ev208d.o ev208f.o ev207.o ev207d.o \
	ev207f.o ev206.o ev206d.o ev206f.o we205.o we205d.o we205f.o gr204.o \
	gr204d.o gr204f.o so203.o so203d.o so203f.o ev202.o ev202d.o ev202f.o \
	ev201.o ev201d.o ev201f.o we200.o we200d.o we200f.o we199.o we199d.o \
	we199f.o we198.o we198d.o we198f.o 

all: Cobj7.o

Cobj7.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj7.o $(OBJECTS)
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

