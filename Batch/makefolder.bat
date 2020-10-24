@echo off
if not "%1"=="" goto cmd
md "Rename Me"
goto end
:cmd
if "%1"=="/?" goto helpbat
if not "%2"=="" goto derhi
md %1
goto end
:derhi
cd "%2"
md "%1"
goto end
:helpbat
echo.
echo USAGE: makefolder foldername directory
echo.
echo directory "Replace directory with the directory where you went to make the folder."
echo.
echo foldername "Replace foldername with the name of the folder you went to make."
echo.
echo If No Arguments are suppled then the Program will make a folder called Rename Me in the Current Directory.
echo.
pause
goto end
:end
echo.