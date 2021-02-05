REM ******** set the variables ************
REM call both to ensure that one works
call "C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"

REM Choose target of Dymola or FMU
set TARGET=Dymola
:: set TARGET=FMU

REM CoolProp version < 5 is legacy
:: set CP_REPO=Legacy
set CP_REPO=Current

REM choose master or version number
:: set CP_VER=master
set CP_VER=6.4.1

call BuildLib-VS "Visual Studio 9 2008"

echo "Copying files to External Media 3.2.1"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win32\ExternalMediaLib.Dymola-vs2008.lib"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win32\ExternalMediaLib.lib"
del ExternalMediaLib.lib
copy Sources\externalmedialib.h "..\Modelica\ExternalMedia 3.2.1\Resources\Include"
echo "All done"
PAUSE