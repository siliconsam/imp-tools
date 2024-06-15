.RECIPEPREFIX = >

BASEDIR = /usr/local

BINDIR = ${BASEDIR}/bin
LIBDIR = ${BASEDIR}/lib
INCDIR = ${BASEDIR}/include

all: slimibj

# We need to build the various programs
install: slimibj
> install -t $(BINDIR) slimibj

# do a minimal tidy up of programs and temporary files
clean: #
> rm -f slimibj
> rm -f *.o
> rm -f *.cod
> rm -f *.ibj
> rm -f *.icd
> rm -f *.lst

# remove the installed tools
clearinstall: #
> rm -f $(BINDIR)/slimibj

# really scrub away all programs and temporary files
superclean: clean

slimibj:
> imp77link slimibj ibjconversion symbols labels



