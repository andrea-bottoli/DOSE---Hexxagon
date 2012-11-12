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
echo "Compiling C code in C23"
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

OBJECTS = big_file_C23_c.obj 

OLDOBJECTS =  tu735.o tu735d.o tu735f.o na758.o na758d.o na758f.o na755.o \
	na755d.o na756.o na756d.o na755f.o na752.o na752d.o na753.o na753d.o \
	na752f.o na749.o na749d.o na750.o na750d.o na749f.o in746.o in746d.o \
	in747.o in747d.o in746f.o in743.o in743d.o in744.o in744d.o in743f.o \
	in740.o in740d.o in741.o in741d.o in740f.o in737.o in737d.o in738.o \
	in738d.o in737f.o ha732.o ha732d.o ha732f.o na757.o na757d.o na757f.o \
	na754.o na754d.o na754f.o na751.o na751d.o na751f.o na748.o na748d.o \
	na748f.o in745.o in745d.o in745f.o in742.o in742d.o in742f.o in739.o \
	in739d.o in739f.o in736.o in736d.o in736f.o it734.o it734d.o it734f.o \
	we731.o we731d.o we731f.o we730.o we730d.o we730f.o we727.o we727d.o \
	we727f.o we728.o we728d.o we728f.o we726.o we726d.o we726f.o we729.o \
	we729d.o we729f.o uc733.o uc733d.o uc733f.o 

all: Cobj23.o

Cobj23.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj23.o $(OBJECTS)
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

