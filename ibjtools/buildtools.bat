@setlocal

@rem Tool to read IBJ data in text form and generate an IBJ file
@fpc -gl assemble2ibj.pas
@rem Tool to read a COFF object file and generate debug info
@fpc -gl coff2dump.pas
@rem Tool to read an IBJ file and generate a textual equivalent
@fpc -gl ibj2assemble.pas
@rem Tool to read an IBJ file and generate a COFF file
@rem this is a Pascal version of the C program pass3
@fpc -gl ibj2coff.pas
@rem Tool to read an IBJ file, compact it by eliminating unused external symbols
@fpc -gl ibj2compact.pas

:the_end
@endlocal

