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
echo "Compiling C code in C31"
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

OBJECTS = big_file_C31_c.obj 

OLDOBJECTS =  co1011.o co1011d.o co1011f.o ev1003.o ev1003d.o ev1003f.o ev1010.o \
	ev1010d.o ev1010f.o ev1009.o ev1009d.o ev1009f.o ev1008.o ev1008d.o \
	ev1008f.o ev1002.o ev1002d.o ev1002f.o kl1020.o kl1020d.o kl1020f.o \
	ev999.o ev999d.o ev999f.o ev1019.o ev1019d.o ev1019f.o ev1001.o \
	ev1001d.o ev1001f.o ev1022.o ev1022d.o ev1022f.o we1018.o we1018d.o \
	we1018f.o ev993.o ev993d.o ev993f.o we1021.o we1021d.o we1021f.o \
	ev994.o ev994d.o ev994f.o ev995.o ev995d.o ev995f.o we1017.o \
	we1017d.o we1017f.o we1007.o we1007d.o we1007f.o ev1000.o ev1000d.o \
	ev1000f.o ev992.o ev992d.o ev992f.o ev991.o ev991d.o ev991f.o ev998.o \
	ev998d.o ev998f.o ev997.o ev997d.o ev997f.o ev996.o ev996d.o ev996f.o \
	ev990.o ev990d.o ev990f.o uc1016.o uc1016d.o uc1016f.o ev1005.o \
	ev1005d.o ev1005f.o ev1004.o ev1004d.o ev1004f.o uc1015.o uc1015d.o \
	uc1015f.o uc1014.o uc1014d.o uc1014f.o uc1013.o uc1013d.o uc1013f.o \
	uc1012.o uc1012d.o uc1012f.o th1006.o th1006d.o th1006f.o 

all: Cobj31.o

Cobj31.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj31.o $(OBJECTS)
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

