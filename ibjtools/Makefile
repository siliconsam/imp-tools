.RECIPEPREFIX = >

BASEDIR=${IMP_TOOLS_HOME}
BINDIR=${BASEDIR}/bin
LIBDIR=${BASEDIR}/lib
INCDIR=${BASEDIR}/include

all: assemble2ibj ibj2assemble ibj2compact ibj2coff coff2dump

# We need to build the various programs
install: assemble2ibj ibj2assemble ibj2compact ibj2coff coff2dump
> install -t $(BINDIR) assemble2ibj
> install -t $(BINDIR) ibj2assemble
> install -t $(BINDIR) ibj2compact
> install -t $(BINDIR) ibj2coff
> install -t $(BINDIR) coff2dump

# do a minimal tidy up of programs and temporary files
clean: #
> rm -f assemble2ibj ibj2assemble ibj2compact ibj2coff coff2dump
> rm -f *.exe
> rm -f *.ppu
> rm -f *.o
> rm -f *.lst

# remove the installed tools
clearinstall: #
> rm -f $(BINDIR)/assemble2ibj
> rm -f $(BINDIR)/ibj2assemble
> rm -f $(BINDIR)/ibj2compact
> rm -f $(BINDIR)/ibj2coff
> rm -f $(BINDIR)/coff2dump

> rm -f $(BINDIR)/assemble2ibj.exe
> rm -f $(BINDIR)/ibj2assemble.exe
> rm -f $(BINDIR)/ibj2compact.exe
> rm -f $(BINDIR)/ibj2coff.exe
> rm -f $(BINDIR)/coff2dump.exe

# really scrub away all programs and temporary files
superclean: clean

assemble2ibj:
> fpc -gl assemble2ibj.pas

ibj2assemble:
> fpc -gl ibj2assemble.pas

ibj2compact:
> fpc -gl ibj2compact.pas

ibj2coff:
> fpc -gl ibj2coff.pas

coff2dump:
> fpc -gl coff2dump.pas

