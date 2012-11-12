case $CONFIG in
'')
	if test ! -f config.sh; then
		(echo "Can't find config.sh."; exit 1)
	fi 2>/dev/null
	. ./config.sh
	;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Preparing C compilation"
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

SUBDIRS = C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 C13 C14 C15 C16 C17 C18 C19 C20 C21 C22 C23 C24 C25 C26 C27 C28 C29 C30 C31 C32 C33 C34 C35 C36 C37 C38 C39 C40 C41 C42 C43 C44 C45 C46 C47 C48 C49 C50 C51 C52 C53 E1

EXTERNALS =  \
	"$(ISE_LIBRARY)\library\net\spec\$(ISE_C_COMPILER)\$(ISE_PLATFORM)\lib\mtnet.lib" \
	"$(ISE_LIBRARY)\library\wel\spec\$(ISE_C_COMPILER)\$(ISE_PLATFORM)\lib\mtwel.lib" \
	"$ISE_LIBRARY\library\vision2\spec\$ISE_C_COMPILER\$ISE_PLATFORM\lib\mtvision2.lib" \
	"$(ISE_LIBRARY)\library\vision2\spec\$ISE_C_COMPILER\$ISE_PLATFORM\lib\libpng.lib" \
	"$(ISE_LIBRARY)\library\vision2\spec\$ISE_C_COMPILER\$ISE_PLATFORM\lib\zlib.lib"

all: dose2012

C1/Cobj1.o: Makefile E1/estructure.h
	cd C1 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C2/Cobj2.o: Makefile E1/estructure.h
	cd C2 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C3/Cobj3.o: Makefile E1/estructure.h
	cd C3 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C4/Cobj4.o: Makefile E1/estructure.h
	cd C4 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C5/Cobj5.o: Makefile E1/estructure.h
	cd C5 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C6/Cobj6.o: Makefile E1/estructure.h
	cd C6 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C7/Cobj7.o: Makefile E1/estructure.h
	cd C7 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C8/Cobj8.o: Makefile E1/estructure.h
	cd C8 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C9/Cobj9.o: Makefile E1/estructure.h
	cd C9 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C10/Cobj10.o: Makefile E1/estructure.h
	cd C10 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C11/Cobj11.o: Makefile E1/estructure.h
	cd C11 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C12/Cobj12.o: Makefile E1/estructure.h
	cd C12 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C13/Cobj13.o: Makefile E1/estructure.h
	cd C13 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C14/Cobj14.o: Makefile E1/estructure.h
	cd C14 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C15/Cobj15.o: Makefile E1/estructure.h
	cd C15 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C16/Cobj16.o: Makefile E1/estructure.h
	cd C16 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C17/Cobj17.o: Makefile E1/estructure.h
	cd C17 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C18/Cobj18.o: Makefile E1/estructure.h
	cd C18 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C19/Cobj19.o: Makefile E1/estructure.h
	cd C19 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C20/Cobj20.o: Makefile E1/estructure.h
	cd C20 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C21/Cobj21.o: Makefile E1/estructure.h
	cd C21 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C22/Cobj22.o: Makefile E1/estructure.h
	cd C22 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C23/Cobj23.o: Makefile E1/estructure.h
	cd C23 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C24/Cobj24.o: Makefile E1/estructure.h
	cd C24 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C25/Cobj25.o: Makefile E1/estructure.h
	cd C25 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C26/Cobj26.o: Makefile E1/estructure.h
	cd C26 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C27/Cobj27.o: Makefile E1/estructure.h
	cd C27 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C28/Cobj28.o: Makefile E1/estructure.h
	cd C28 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C29/Cobj29.o: Makefile E1/estructure.h
	cd C29 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C30/Cobj30.o: Makefile E1/estructure.h
	cd C30 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C31/Cobj31.o: Makefile E1/estructure.h
	cd C31 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C32/Cobj32.o: Makefile E1/estructure.h
	cd C32 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C33/Cobj33.o: Makefile E1/estructure.h
	cd C33 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C34/Cobj34.o: Makefile E1/estructure.h
	cd C34 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C35/Cobj35.o: Makefile E1/estructure.h
	cd C35 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C36/Cobj36.o: Makefile E1/estructure.h
	cd C36 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C37/Cobj37.o: Makefile E1/estructure.h
	cd C37 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C38/Cobj38.o: Makefile E1/estructure.h
	cd C38 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C39/Cobj39.o: Makefile E1/estructure.h
	cd C39 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C40/Cobj40.o: Makefile E1/estructure.h
	cd C40 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C41/Cobj41.o: Makefile E1/estructure.h
	cd C41 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C42/Cobj42.o: Makefile E1/estructure.h
	cd C42 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C43/Cobj43.o: Makefile E1/estructure.h
	cd C43 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C44/Cobj44.o: Makefile E1/estructure.h
	cd C44 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C45/Cobj45.o: Makefile E1/estructure.h
	cd C45 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C46/Cobj46.o: Makefile E1/estructure.h
	cd C46 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C47/Cobj47.o: Makefile E1/estructure.h
	cd C47 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C48/Cobj48.o: Makefile E1/estructure.h
	cd C48 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C49/Cobj49.o: Makefile E1/estructure.h
	cd C49 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C50/Cobj50.o: Makefile E1/estructure.h
	cd C50 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C51/Cobj51.o: Makefile E1/estructure.h
	cd C51 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C52/Cobj52.o: Makefile E1/estructure.h
	cd C52 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C53/Cobj53.o: Makefile E1/estructure.h
	cd C53 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

E1/Makefile: E1/Makefile.SH
	cd E1 ; $(SHELL) Makefile.SH

E1/emain.o: Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/emain.template" E1/emain.c
	cd E1 ; $(MAKE) emain.o

E1/eoption.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eoption.o

E1/epattern.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) epattern.o

E1/efrozen.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) efrozen.o

E1/ecall.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) ecall.o

E1/eplug.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eplug.o

E1/eskelet.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eskelet.o

E1/enames.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) enames.o

E1/evisib.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) evisib.o

E1/ececil.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) ececil.o

E1/einit.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) einit.o

E1/eparents.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eparents.o

OBJECTS= C53/Cobj53.o C52/Cobj52.o C51/Cobj51.o C50/Cobj50.o C49/Cobj49.o C48/Cobj48.o C47/Cobj47.o C46/Cobj46.o C45/Cobj45.o C44/Cobj44.o C43/Cobj43.o C42/Cobj42.o C41/Cobj41.o C40/Cobj40.o C39/Cobj39.o C38/Cobj38.o C37/Cobj37.o C36/Cobj36.o C35/Cobj35.o C34/Cobj34.o C33/Cobj33.o C32/Cobj32.o C31/Cobj31.o C30/Cobj30.o C29/Cobj29.o C28/Cobj28.o C27/Cobj27.o C26/Cobj26.o C25/Cobj25.o C24/Cobj24.o C23/Cobj23.o C22/Cobj22.o C21/Cobj21.o C20/Cobj20.o C19/Cobj19.o C18/Cobj18.o C17/Cobj17.o C16/Cobj16.o C15/Cobj15.o C14/Cobj14.o C13/Cobj13.o C12/Cobj12.o C11/Cobj11.o C10/Cobj10.o C9/Cobj9.o C8/Cobj8.o C7/Cobj7.o C6/Cobj6.o C5/Cobj5.o C4/Cobj4.o C3/Cobj3.o C2/Cobj2.o C1/Cobj1.o  E1/eoption.o E1/epattern.o E1/efrozen.o E1/ecall.o E1/eplug.o E1/eskelet.o E1/enames.o E1/evisib.o E1/ececil.o E1/einit.o E1/eparents.o

PRECOMP_OBJECTS= 


dose2012: $(OBJECTS)  E1/emain.o Makefile
	$(RM) dose2012
	$(CPP) -o dose2012 $(CPPFLAGS) $(CCLDFLAGS)  $(OBJECTS) E1/emain.o \
		$(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(LIBS)

RCECIL = MTwmalloc.o MTwgarcol.o MTwlocal.o MTwexcept.o MTwstore.o \
	MTwretrieve.o MTwhash.o MTwtraverse.o MTwhashin.o MTwtools.o \
	MTwinternal.o MTwplug.o MTwcopy.o MTwequal.o MTwlmalloc.o MTwout.o \
	MTwtimer.o MTwurgent.o MTwsig.o MTwhector.o MTwcecil.o MTwbits.o \
	MTwfile.o MTwdir.o MTwmisc.o MTwerror.o MTwumain.o MTwmemory.o \
	MTwargv.o MTwboolstr.o MTwsearch.o MTwmain.o MTdebug.o MTinterp.o \
	MTwoption.o MTupdate.o MTwbench.o MTwrun_idr.o MTwcompress.o \
	MTwconsole.o MTwpath_name.o MTwobject_id.o MTweif_threads.o \
	MTwgen_conf.o MTweif_type_id.o MTwrout_obj.o MTweif_project.o \
	MTidrs.o MTwposix_threads.o MTnetwork.o mtipc.o MTwscoop.o 

STATIC_CECIL = libdose2012.a
cecil: $(STATIC_CECIL)
$(STATIC_CECIL):  $(OBJECTS) 
	$(AR) x $(EIFLIB)
	$(AR) cr $(STATIC_CECIL) $(OBJECTS) $(PRECOMP_OBJECTS) $(RCECIL)
	$(RANLIB) $(STATIC_CECIL)
	$(RM) $(RCECIL) 

SHARED_CECIL = libdose2012$(SHARED_SUFFIX)
dynamic_cecil: $(SHARED_CECIL) 
SHARED_CECIL_OBJECT = $(OBJECTS) \
		E1/emain.o
SHAREDFLAGS = $(LDSHAREDFLAGS) $(SHARED_CECIL) 
$(SHARED_CECIL): $(SHARED_CECIL_OBJECT) 
	$(RM) $(SHARED_CECIL) 
	$(SHAREDLINK) $(SHAREDFLAGS) $(SHARED_CECIL_OBJECT) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 



dynlib: $(SYSTEM_IN_DYNAMIC_LIB) 
E1/egc_dynlib.o: Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/egc_dynlib.template" E1/egc_dynlib.c
	cd E1 ; $(MAKE) egc_dynlib.o ; cd ..
E1/edynlib.o: Makefile E1/Makefile E1/edynlib.c 
	cd E1 ; $(MAKE) edynlib.o ; cd ..

SYSTEM_IN_DYNAMIC_LIB_OBJ = $(OBJECTS) \
		E1/edynlib.o E1/egc_dynlib.o 
DYNLIBSHAREDFLAGS = $(LDSHAREDFLAGS) $(SYSTEM_IN_DYNAMIC_LIB) 
$(SYSTEM_IN_DYNAMIC_LIB): $(SYSTEM_IN_DYNAMIC_LIB_OBJ) 
	$(RM) $(SYSTEM_IN_DYNAMIC_LIB) 
	$(SHAREDLINK) $(DYNLIBSHAREDFLAGS) $(SYSTEM_IN_DYNAMIC_LIB_OBJ) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 


clean: sub_clean local_clean
clobber: sub_clobber local_clobber

local_clean::
	$(RM) core finished *.o *.so *.a

local_clobber:: local_clean
	$(RM) Makefile config.sh finish_freezing

sub_clean::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clean); \
		fi; \
	done

sub_clobber::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clobber); \
		fi; \
	done

!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile
