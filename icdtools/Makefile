.RECIPEPREFIX = >

BASEDIR=${IMP_TOOLS_HOME}

BINDIR = ${BASEDIR}/bin
LIBDIR = ${BASEDIR}/lib
INCDIR = ${BASEDIR}/include

all: assemble2icd icd2assemble icd2dump

# We need to build the various programs
installx: assemble2icd icd2assemble icd2dump
> install -t $(BINDIR) assemble2icd
> install -t $(BINDIR) icd2assemble
> install -t $(BINDIR) icd2dump

# We need to build the various programs
install: assemble2icd icd2assemble icd2dump
> cp assemble2icd ${IMP_INSTALL_HOME}/bin/assemble2icd
> cp icd2assemble ${IMP_INSTALL_HOME}/bin/icd2assemble
> cp icd2dump     ${IMP_INSTALL_HOME}/bin/icd2dump

clearinstallx: #
> rm -f ${IMP_INSTALL_HOME}/bin/*icd*

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

