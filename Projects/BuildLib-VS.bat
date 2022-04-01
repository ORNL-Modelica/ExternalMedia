echo off

REM   ****************** README *********************************
REM BuildLib-VSXXXX.bat should be called to set the proper environmental variables
REM Do not run this file directly!!!
REM   ****************** README *********************************
REM ~ /Ox : full optimization
REM ~ /c : compile
REM ~ /MP3 : 
REM ~ /fp:fast :
REM ~ /MD : Multi-threaded DLL runtime library
REM ~ /Ehsc : Explicitly enable exception handling

if "%TARGET%"=="FMU" (
  set LIB=/MT
) else (
  set LIB=/MD
)

set C_OPTS=/Ox /c /MP3 /fp:fast %LIB% /EHsc
set CP=..\externals\coolprop\trunk
set CPinc=%CP%\CoolProp
set INCLUDES=-I%CPinc%

echo ' ' 
echo "Detecting supported solvers"
setlocal EnableDelayedExpansion
set i=0
for /f "delims=" %%a in ('FINDSTR FLUIDPROP Sources\include.h') do (
  set line[!i!]=%%a
  set /A i=i+1
  )
for /f "tokens=3" %%a in ("%line[0]%") do set FLUIDP=%%a
echo "FluidProp support set to: %FLUIDP%"

set i=0
for /f "delims=" %%a in ('FINDSTR COOLPROP Sources\include.h') do (
  set line[!i!]=%%a
  set /A i=i+1
  )
for /f "tokens=3" %%a in ("%line[0]%") do set COOLP=%%a
echo " CoolProp support set to: %COOLP%"

REM ********** CoolProp sources *********
if "%COOLP%"=="1" (
  REM echo "Sources in %CP%"
  if exist "%CP%" (
    pushd "%CP%"
    git pull origin master
    git submodule update --init
    popd 
  ) else (
    git clone --recursive https://github.com/ibell/coolprop.git "%CP%"
  )
)

REM echo "Compiling sources"
REM ****** compile all the sources for OpenModelica ************
cl %C_OPTS% /c %INCLUDES% Sources\*.cpp

REM ********** CoolProp sources *********
if "%COOLP%"=="1" cl %C_OPTS% /c %INCLUDES% %CP%\CoolProp\*.cpp

lib *.obj /OUT:ExternalMediaLib.lib
erase *.obj

:End