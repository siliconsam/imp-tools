.RECIPEPREFIX = >

BASEDIR = /usr/local

BINDIR = ${BASEDIR}/bin
LIBDIR = ${BASEDIR}/lib
INCDIR = ${BASEDIR}/include
WBINDIR = ${IMP_INSTALL_HOME}\bin

all: slimibj

# We need to build the various programs
install: slimibj
> install -t $(BINDIR) slimibj

winstall: wslimibj
> copy slimibj.exe ${WBINDIR}\*

# do a minimal tidy up of programs and temporary files
clean: #
> rm -f slimibj
> rm -f *.o
> rm -f *.obj
> rm -f *.cod
> rm -f *.ibj
> rm -f *.icd
> rm -f *.lst
> rm -f *.exe

# remove the installed tools
clearinstall: #
> rm -f $(BINDIR)/slimibj

wclearinstall: #
> rm -f ${WBINDIR}\slimibj.exe

# really scrub away all programs and temporary files
superclean: clean

slimibj:
> imp77link slimibj ibjconversion symbols labels

wslimibj:
> imp32 -c slimibj
> imp32 -c ibjconversion
> imp32 -c symbols
> imp32 -c labels
> imp32link slimibj ibjconversion symbols labels
