.RECIPEPREFIX = >

BASEDIR=${IMP_TOOLS_HOME}

BINDIR = ${BASEDIR}/bin
LIBDIR = ${BASEDIR}/lib
INCDIR = ${BASEDIR}/include

all: assemble2icd icd2assemble icd2dump

# We need to build the various programs
install: assemble2icd icd2assemble icd2dump
> install -t $(BINDIR) assemble2icd
> install -t $(BINDIR) icd2assemble
> install -t $(BINDIR) icd2dump

clearinstall: #
> rm -f $(BINDIR)/*icd*

# do a minimal tidy up of programs and temporary files
clean: #
> rm -f assemble2icd icd2assemble icd2dump
> rm -f *.ppu
> rm -f *.o

# really scrub away all programs and temporary files
superclean: clean

assemble2icd:
> fpc -gl assemble2icd.pas

icd2assemble:
> fpc -gl icd2assemble.pas

icd2dump:
> fpc -gl icd2dump.pas

