@echo off
setlocal EnableExtensions EnableDelayedExpansion
:MENU
cls
echo -create1 (create Evan Pass)
echo -create2 (create Ryan Pass)
echo -Verify1 (check Evan Pass)
echo -Verify2 (check Ryan Pass)
echo.
set /p PROGRAM= What do you want to do?
goto %PROGRAM%




:create1
cls
set /p PASSWORD1= What do you want your passoword to be?:
echo %PASSWORD1% > EvanPass.txt
pause
goto MENU



:Verify1
cls
set /p PASSWORD1= What is your password?:

for /f "Delims=" %%a in (EvanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct1
echo You are wrong!!!
pause
goto MENU




:correct1
cls
echo Logged In.
pause
:Login1
echo -To access option, enter option name-
echo -Options-
echo -Shortcut-
set /p OPTION=-->
goto %OPTION%






:Options
echo -exit-
echo -change password-
set /p OPTIONS=--->
goto %OPTIONS*

:Exit
goto MENU



:Change_Password

goto create1

















:create2
cls
set /p PASSWORD= What do you want your password to be?:
echo %PASSWORD% > RyanPass.txt
pause
goto MENU



:Verify2
cls
set /p PASSWORD2= What is your password?:

for /f "Delims=" %%a in (RyanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD2%==%TEXT% goto correct2
echo You are wrong!!!
pause
goto MENU





:correct2
cls
echo U DID GUD MATE
pause
goto MENU















