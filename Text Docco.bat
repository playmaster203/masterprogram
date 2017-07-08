@echo off
:START
cls
echo -create (create password)
echo -check (check password)
echo.
set /p PROGRAM= What do you want to do?: 
goto %PROGRAM%




:create 
cls
set /p PASSWORD= What do you want your passowrd to be?:
echo %PASSWORD% > test.txt
pause
goto start

:check
cls
set /p PASSWORD1= What is your password?

for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a

)
if %PASSWORD1%==%TEXT% goto correct
echo you are wrong!!!
pause
goto start

:correct
You are right!
pause
goto start