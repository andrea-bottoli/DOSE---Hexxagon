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
echo "Compiling C code in C21"
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

OBJECTS = big_file_C21_c.obj 

OLDOBJECTS =  we692.o we692d.o we692f.o we691.o we691d.o we691f.o we690.o \
	we690d.o we690f.o we689.o we689d.o we689f.o we688.o we688d.o we688f.o \
	we687.o we687d.o we687f.o we686.o we686d.o we686f.o we685.o we685d.o \
	we685f.o we684.o we684d.o we684f.o we683.o we683d.o we683f.o we682.o \
	we682d.o we682f.o we681.o we681d.o we681f.o we680.o we680d.o we680f.o \
	we679.o we679d.o we679f.o we678.o we678d.o we678f.o we677.o we677d.o \
	we677f.o we676.o we676d.o we676f.o we675.o we675d.o we675f.o we674.o \
	we674d.o we674f.o we673.o we673d.o we673f.o we672.o we672d.o we672f.o \
	we671.o we671d.o we671f.o we670.o we670d.o we670f.o we669.o we669d.o \
	we669f.o we668.o we668d.o we668f.o we667.o we667d.o we667f.o we666.o \
	we666d.o we666f.o we665.o we665d.o we665f.o we664.o we664d.o we664f.o \
	we663.o we663d.o we663f.o we662.o we662d.o we662f.o we661.o we661d.o \
	we661f.o we660.o we660d.o we660f.o 

all: Cobj21.o

Cobj21.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj21.o $(OBJECTS)
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

