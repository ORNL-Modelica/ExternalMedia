REM ******** set the variables ************
call "%VS2017INSTALLDIR%\VC\Auxiliary\Build\vcvars64.bat"

REM Choose target of Dymola or FMU
set TARGET=Dymola
:: set TARGET=FMU

REM CoolProp version < 5 is legacy
set CP_REPO=Legacy
:: set CP_REPO=Current

REM choose master or version number
set CP_VER=master
:: set CP_VER=6.4.1

call BuildLib-VS "Visual Studio 15 2017"

echo "Copying files to External Media 3.2.1"
if not exist "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\" mkdir "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.Dymola-VS2017.lib"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.lib"
del ExternalMediaLib.lib
copy Sources\externalmedialib.h "..\Modelica\ExternalMedia 3.2.1\Resources\Include"
echo "All done"
PAUSE