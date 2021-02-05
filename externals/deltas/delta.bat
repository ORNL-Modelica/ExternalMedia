setlocal disabledelayedexpansion
@echo off

set tmpFile=%~dp0someTemp.tmp

set fileToEdit=%~dp0..\CoolProp_Current\include\CPstrings.h
move %fileToEdit% %tmpFile%
set p=
for /f "tokens=1* delims=:" %%a in ('findstr /n "^" "%tmpFile%"') do (
  if "%%a"=="10" echo #define NO_FMTLIB>>%fileToEdit%
  echo.%%b>>%fileToEdit%
  set p=%%b
)
del %tmpFile%

set fileToEdit=%~dp0..\CoolProp_Current\src\CPstrings.cpp
move %fileToEdit% %tmpFile%
set p=
for /f "tokens=1* delims=:" %%a in ('findstr /n "^" "%tmpFile%"') do (
  if "%%a"=="6" echo #include ^<stdarg.h^>>>%fileToEdit%
  echo.%%b>>%fileToEdit%
  set p=%%b
)
del %tmpFile%

@echo on