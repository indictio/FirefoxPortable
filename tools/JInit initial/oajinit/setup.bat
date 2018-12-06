@echo off
REM $Header: setup.bat 115.0 2001/02/01 13:19:37 fnddev ship $
REM 
REM Script (for NT and Win9x) to launch OAJSETUP and subsequent cleanup
REM This file is used, rather than invoking oajsetup.bat directly, so that
REM additional environment space can be set aside (bug 1609212).
REM
REM NOTE: This file should only be used with version 115.12 or later of
REM adjbuild.sh.

command.com /E:4096 /C oajsetup.bat

if not "%os%"=="Windows_NT" goto del9x
rd /q /s adjbuild
rd /q /s META-INF
goto end
:del9x
deltree /y adjbuild
deltree /y META-INF
:end
del autosetup.txt
del oajsetup.bat
del setup.bat
