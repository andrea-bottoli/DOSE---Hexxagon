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
echo "Compiling C code in C11"
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

OBJECTS = big_file_C11_c.obj 

OLDOBJECTS =  rt354.o rt354d.o rt354f.o rt353.o rt353d.o rt353f.o st362.o \
	st362d.o st362f.o nu360.o nu360d.o nu360f.o it359.o it359d.o it359f.o \
	do344.o do344d.o do344f.o st356.o st356d.o st356f.o st358.o st358d.o \
	st358f.o st357.o st357d.o st357f.o rt355.o rt355d.o rt355f.o rt352.o \
	rt352d.o rt352f.o ev349.o ev349d.o ev349f.o ev348.o ev348d.o ev348f.o \
	ev338.o ev338d.o ev338f.o ev346.o ev346d.o ev346f.o in361.o in361d.o \
	in361f.o ma342.o ma342d.o ma342f.o tt341.o tt341d.o tt341f.o tt340.o \
	tt340d.o tt340f.o tt339.o tt339d.o tt339f.o ev337.o ev337d.o ev337f.o \
	ev335.o ev335d.o ev335f.o ev336.o ev336d.o ev336f.o ev333.o ev333d.o \
	ev333f.o ev331.o ev331d.o ev331f.o ev332.o ev332d.o ev332f.o fo345.o \
	fo345d.o fo345f.o ev351.o ev351d.o ev351f.o si343.o si343d.o si343f.o \
	ev350.o ev350d.o ev350f.o ev334.o ev334d.o ev334f.o rt330.o rt330d.o \
	rt330f.o ev347.o ev347d.o ev347f.o 

all: Cobj11.o

Cobj11.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj11.o $(OBJECTS)
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

