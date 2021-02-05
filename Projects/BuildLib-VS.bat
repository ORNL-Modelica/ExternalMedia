echo off
setlocal EnableDelayedExpansion

REM   ****************** README *********************************
REM BuildLib-VSXXXX.bat should be called to set the proper environmental variables
REM Do not run this file directly!!!
REM   ****************** README *********************************
REM ~ /Ox : full optimization
REM ~ /c : compile
REM ~ /MP3 : 
REM ~ /fp:fast :
REM ~ /MD : Multi-threaded DLL run-time library (Dymola) OR
REM ~ /MT : Multi-threaded static run-time library (FMU)
REM ~ /Ehsc : Explicitly enable exception handling

if "%TARGET%"=="FMU" (
  set LIB=/MT
) else (
  set LIB=/MD
)
set C_OPTS=/Ox /c /MP3 /fp:fast %LIB% /EHsc /DNOMINMAX

set EXTERNALS="..\externals"
if not exist "%EXTERNALS%" (mkdir "%EXTERNALS%")
pushd "%EXTERNALS%"
set CP_SRC=!CD!\CoolProp_%CP_REPO%
set CP_TMP=!CD!\CoolProp.build.msvc
set CP_DELTA=!CD!\deltas
popd 
if "%CP_REPO%"=="Legacy" (
  set CP_INC="%CP_SRC%\CoolProp"
) else (
  set CP_INC="%CP_SRC%\include"
)
set INCLUDES=-I "%CP_SRC%" -I "%CP_INC%" -I "%CP_SRC%\externals\msgpack-c\include" -I "%CP_SRC%\externals\cppformat"
set CP_COMP=%~1

echo ' ' 
echo "Detecting supported solvers"
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
  REM echo "Sources in %CP_SRC%"
  REM echo "Builds in %CP_TMP%"
  if not exist "%CP_SRC%" (
    if "%CP_REPO%"=="Legacy" (
      git clone --recursive https://github.com/ibell/coolprop.git "%CP_SRC%"
    ) else (
      git clone --recursive https://github.com/CoolProp/CoolProp.git "%CP_SRC%"
    )
  )
  pushd "%CP_SRC%"
  git fetch --all
  if "%CP_VER%"=="master" (
    git reset --hard origin/master
  ) else (
    git checkout -f refs/tags/v%CP_VER%
  )
  git submodule update --init
  popd
  
  if "%CP_REPO%"=="Current" (
    echo "Make required changes to checkout."
    pushd "%CP_DELTA%"
    call delta.bat
    popd
  )
  
  if exist "%CP_TMP%" (
    del /f /s /q "%CP_TMP%" 1>nul
  )
  
  if not exist "%CP_TMP%" (
    mkdir "%CP_TMP%"
    echo "Created directory: %CP_TMP%"
  )
  pushd "%CP_TMP%"
  echo "Sources for %CP_COMP% in %CP_SRC%"
  cmake "%CP_SRC%" -DCOOLPROP_OBJECT_LIBRARY=ON -DCOOLPROP_RELEASE=ON -G "%CP_COMP%" 
  cmake --build . --config Release
  popd
  copy "%CP_TMP%\CoolProp.dir\Release\"*.obj .
)

REM echo "Compiling sources"
REM ****** compile all the sources for OpenModelica ************
cl %C_OPTS% %INCLUDES% Sources\*.cpp

lib *.obj /OUT:ExternalMediaLib.lib
erase *.obj

:End