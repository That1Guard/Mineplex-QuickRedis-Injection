@echo off
title Pre-Install: Warning
color de
echo This will flush db0 ONLY! Save anything that you have set in that database.
echo This will also install a fresh copy of the Mineplex Redis configuration. 
echo Use that as however you wish.
echo.
echo.
echo.
echo This is warning is a check to ensure that you read and understood the what 
echo will happen. This script (or I) is not responsible for any mistakes made 
echo on the end-user part of this.
echo.
echo.
echo.
echo To show that you have been reading this, please enter Y to accept the risk. 
echo If not, enter 2. Note - Delaying any longer will result using Default: N
echo.
echo.
echo.
echo.
CHOICE /T 30 /C YN /CS /D N /M "Do you accept the risk:"

:: Any choices must be listed in decreasing value in that order, i.e. Y=1 and N=2, but listed like so below.
IF ERRORLEVEL 2 GOTO End
IF ERRORLEVEL 1 GOTO Fresh_Install


:Fresh_Install
color a
title Installing...
cls
type fresh_install.txt | redis-cli -x -n db0
echo.
echo.
title Install Finished
echo Install finished. You may now close
pause
exit

:End
echo.
echo.
echo Solution resulted in N(o), you may now exit.
pause
exit