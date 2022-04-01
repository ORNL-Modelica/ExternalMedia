REM ******** set the variables ************
call "%VS2019INSTALLDIR%\VC\Auxiliary\Build\vcvars64.bat"

REM Choose target of Dymola or FMU
set TARGET=Dymola
:: set TARGET=FMU

call BuildLib-VS

echo "Copying files to External Media 3.2.1"
if not exist "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\" mkdir "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.Dymola-vs2019.lib"
copy ExternalMediaLib.lib "..\Modelica\ExternalMedia 3.2.1\Resources\Library\win64\ExternalMediaLib.lib"
del ExternalMediaLib.lib
copy Sources\externalmedialib.h "..\Modelica\ExternalMedia 3.2.1\Resources\Include"
echo "All done"
PAUSE