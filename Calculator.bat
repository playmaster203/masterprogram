echo off

:START

set /p MATH=Equation?

set /a RESULT=%MATH%

echo %RESULT%

pause
cls
goto start

