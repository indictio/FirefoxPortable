@echo off
set JINITFILE="jinit11816.exe"
set JINITVER=118
@echo off
REM $Header: oajsetup.bat 115.2 2001/02/01 13:19:31 fnddev ship $
REM 
REM Script (for NT and Win9x) to launch OAJSETUP
REM
REM The adjbuild repackaging script/command file will provide settings for
REM the variable(s) below at the beginning of this file. If adjbuild is not
REM run, the following default argument will be used:
REM
REM NOTE: This file should only be used with version 115.12 or later of
REM adjbuild.sh.

if "%JINITFILE%" == "" set JINITFILE=jinit11816.exe

REM OAJSETUP.EXE can also be run with no arguments. In this case, JInitiator
REM will NOT be installed, but any digital certificates found in the current
REM directory will still be installed in the last location JInitiator was
REM installed.

cd adjbuild
oajsetup.exe %JINITFILE% %JINITVER%
cd ..
