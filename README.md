"# imp-tools"

This distribution contains:-
* Source code for the following utilities written in IMP
    * slimibj - removes various IBJ records from the given .ibj file

* Source code for the following utilities written in Free Pascal
    * icd2assemble - convert a .icd file to a pseudo-assembler format
    * icd2dump - create an ASCII dump of a .icd binary file
    * assemble2icd - convert a pseudo assembler file into a .icd file

    * ibj2assemble - convert a .ibj file to a pseudo-IBJ-assembler format
    * ibj2coff - create a COFF (.obj) file from a .ibj file
    * ibj2compact - removes unused external symbols from a .ibj file
    * assemble2ibj - convert a pseudo IBJ assembler file into a .ibj file

    * coff2dump - create a readable version of the contents of a COFF .obj file

COMMON PRE-REQUISITES

* Installed copy of the IMP compiler (IMP2024 recommended) on your Windows/Linux/WSL machine
* Installed copy of the "imp-tools" git repository on your Windows/Linux/WSL machine
* Optionally the FreePascal compiler for i386 Linux/Windows from www.freepascal.org
    * appropriate version for the Windows/Linux O/S environment
    * required to build the imp-tools implemented in Free-Pascal
        * (until these tools are re-implemented in imp77)

PRE-REQUISITES FOR LINUX

* Ensure the Linux system has the latest software
    * sudo apt update   (or equivalent Linux command)
    * sudo apt upgrade  (or equivalent Linux command)
* dos2unix
    * sudo apt install dos2unix (or equivalent command)
* A C compiler and libraries. (Build tested against the gcc compiler suite)
    * Ensure the C compiler can compile/link 32-bit code
    * sudo apt install gcc-multilib  (for the gcc compiler)
* The FreePascal compiler (required for the .ibj, .icd file utilities)
    * sudo apt install fpc  (or equivalent Linux command)
* Read, Write + executable access to the /usr/local folder and sub-folders

PRE-REQUISITES FOR WINDOWS (Versions 8 upwards)

* A C compiler + libraries. (Build tested with Visual Studio in command-line mode)
* The Free Pascal compiler + libraries. (Build tested with Free Pascal in command-line mode)

POSSIBLE REQUIRED TWEAKS FOR INSTALLATION:

The Makefiles supplied don't try to figure out local installed software or
policies, so you may need to make some changes.  In particular:

1.  The Makefiles assume GCC (/ Free Pascal) is your compiler.
2.  The Makefiles, and the shell/make scripts assume that you will install to
    /usr/local/bin, /usr/local/lib and /usr/local/include.
3.  The "install" command is particularly sensitive to the UNIX/Linux variant you
    are running, and the install section of the Makefiles will likely need fixing.

BUILDING

Assuming an IMP compiler has been installed

The order of building is...

    * # build the slimibj tool
    * cd imp-tools/slimibj
    * make install

    * # assuming a Free Pascal has been installed

    * # build the ibj tools
	* cd imp-tools/ibjtools
	* make install

    * # build the icd tools
	* cd imp-tools/icdtools
	* make install

This should have installed the various imp tools in your Linux environment

Let me know if this build procedure doesn't work (via a github notification),
but only after you have safely installed the IMP (IMP2024) and Free Pascal compilers

Building the LInux Bootstrapping has been tested in:-
 1) a WSL version 2 environment (Debian and Ubuntu 22.04 LTS)
    These environments use a later version of the GNU binutils package
 2) a Centos-7 virtual machine
    This uses an earlier version of the GNU binutils package

N.B. The "make bootstrap" command uses dos2unix to change the line-endings of various
text files to have the UNIX/Linux CR line ending rather than Windows CR-LF line ending.
The other make commands ass-u-me that text files have the CR line ending.

USER ENHANCEMENTS

User enhancements are only recommended after you have understood the documentation describing:
    * .icd file format
	* .ibj file format
	* COFF (.obj) file format
	* ELF (.o) file format

Remember, always keep backups of the previous versions of source files and the
installed files.
If not, the GitHub repository should contain a set of files that can be used to
re-build the imp-tools.

RUNNING THE IMP TOOLS
    The various tools will output help details on their usage by running the tool executable with no command line parameters
 
BUILDING WINDOWS VERSION

Obtain the pre-requisite software for Windows

1) Copy/Git pull the git repository folder tree to a Windows folder
    (or obtain a .zip file of the folder source and unzip to a folder of your choice)
2) Ensure the Visual Studio 32-bit command shell can access the intalled IMP compiler
3) Ensure the Visual Studio 32-bit command shell can access the FreePascal compiler
4) Modify the setenv.bat script (in the IMP compiler folders) to point to the Free Pascal compiler
5) Each imp-tools sub-folder will contain a buildtools.bat file to build its various tools
5) When using the Visual Studio 32-bit command shell ensure you ALWAYS call setenv.bat
    This will give access to the IMP compiler and associated utilities.

Good luck and enjoy!

Original implementation by:
Andy Davis
andy@nb-info.co.uk

Refreshed and enhanced by:
John McMullin
jdmcmullin@aol.com


