.RECIPEPREFIX = >

BASEDIR=${IMP_TOOLS_HOME}
BINDIR = ${BASEDIR}/bin
LIBDIR = ${BASEDIR}/lib
INCDIR = ${BASEDIR}/include

all: slimibj

wall: wslimibj

# We need to build the various programs
install: slimibj
> install -t $(BINDIR) slimibj

# remove the installed tools
clearinstall: #
> rm -f $(BINDIR)/slimibj

winstall: wslimibj
> copy slimibj.exe ${BINDIR}\slimibj.exe

wclearinstall: #
> del/F ${BINDIR}\slimibj.exe

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
> rm -f *.map

# really scrub away all programs and temporary files
superclean: clean

slimibj: #
> imp77 -c slimibj
> imp77 -c ibjconversion
> imp77 -c symbols
> imp77 -c labels
> imp77link slimibj ibjconversion symbols labels

wslimibj: #
> imp32 -c slimibj
> imp32 -c ibjconversion
> imp32 -c symbols
> imp32 -c labels
> imp32link slimibj ibjconversion symbols labels
