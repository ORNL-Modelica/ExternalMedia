REM ******** set the variables ************
call "%VS2019INSTALLDIR%\VC\Auxiliary\Build\vcvars64.bat"

REM Choose target of Dymola or FMU
set TARGET=Dymola
:: set TARGET=FMU

REM CoolProp version < 5 is legacy
set CP_REPO=Legacy
:: set CP_REPO=Current

REM choose master or version number
set CP_VER=master
:: set CP_VER=6.4.1

call BuildLib-VS "Visual Studio 16 2019"

echo "Copying files to External Media 3.2.1"
if not exist "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\" mkdir "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.Dymola-vs2019.lib"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.lib"
del ExternalMediaLib.lib
copy Sources\externalmedialib.h "..\Modelica\ExternalMedia 3.2.1\Resources\Include"
echo "All done"
PAUSE