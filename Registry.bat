@echo off
:MENU
cls
echo -create1 (create Evan Pass)
echo -create2 (create Ryan Pass)
echo -Verify1 (check Evan Pass)
echo -Verify2 (check Ryan Pass)
echo -Login (Access account)
echo.
set /p PROGRAM= What do you want to do?
goto %PROGRAM%




:create1
cls
set /p PASSWORD= What do you want your passowrd to be?:
echo %PASSWORD% > EvanPass.txt
pause
goto MENU



:Verify1
cls
set /p PASSWORD1=What is your password?:

for /f "Delims=" %%a in (EvanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct1
echo You are wrong!!!
pause
goto MENU




:correct1
echo Successfully Logged In.
cls
pause
goto Loggedin1

:Loggedin1
cls
echo To get to a category, enter a catagory name.
echo -Options-
echo -Shortcuts-
set /p OPTION= Go To:
goto %OPTION%
pause

:OPTIONS
cls
echo To get to a category, enter a catagory name.
echo -ChangePassword-
echo -Exit-
echo -Back-
set /p OPTIONS= Go To:
goto %OPTIONS%


:ChangePassword
cls
goto Create1

:Exit
cls
goto MENU

:Back
cls
goto Loggedin1




:create2
cls
set /p PASSWORD= What do you want your passowrd to be?:
echo %PASSWORD% > RyanPass.txt
pause
goto MENU



:Verify2
cls
set /p PASSWORD1=What is your password?:

for /f "Delims=" %%a in (RyanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct2
echo You are wrong!!!
pause
goto MENU




:correct2
echo Successfully Logged In.
pause
:Loggedin2
cls
echo To get to a category, enter a catagory name.
echo -Exit to Menu-
echo -Change Password-
echo -Youtube-

















