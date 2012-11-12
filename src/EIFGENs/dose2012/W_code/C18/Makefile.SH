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
echo "Compiling C code in C18"
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

OBJECTS = big_file_C18_c.obj big_file_C18_cpp.obj 

OLDOBJECTS =  ne584.o ne584d.o ne584f.o pl587.o pl587d.o pl587f.o ab566.o \
	ab566d.o ab566f.o de563.o de563d.o de563f.o ad576.o ad576d.o ad576f.o \
	eq588.o eq588d.o eq588f.o di579.o di579d.o di579f.o ne583.o ne583d.o \
	ne583f.o st582.o st582d.o st582f.o ma572.o ma572d.o ma572f.o fi585.o \
	fi585d.o fi585f.o nu567.o nu567d.o nu567f.o ra586.o ra586d.o ra586f.o \
	ev565.o ev565d.o ev565f.o ev564.o ev564d.o ev564f.o ev590.o ev590d.o \
	ev590f.o mu571.o mu571d.o mu571f.o id589.o id589d.o id589f.o me578.o \
	me578d.o me578f.o ad577.o ad577d.o ad577f.o ex575.o ex575d.o ex575f.o \
	di568.o di568d.o di568f.o so581.o so581d.o so581f.o io580.o io580d.o \
	io580f.o ev574.o ev574d.o ev574f.o we591.o we591d.o we591f.o we573.o \
	we573d.o we573f.o we593.o we593d.o we593f.o we570.o we570d.o we570f.o \
	we592.o we592d.o we592f.o ki562.o ki562d.o ki562f.o ki561.o ki561d.o \
	ki561f.o co569.o co569d.o co569f.o 

all: Cobj18.o

Cobj18.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj18.o $(OBJECTS)
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

