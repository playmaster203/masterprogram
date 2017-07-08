color 02
@echo off
:MENU
cls
title Login Terminal
echo -Verify1 (Evan Login)
echo -Verify2 (Ryan Login)
echo -CreateNew (Creates Temporary User)
echo.
set /p PROGRAM= What do you want to do?
goto %PROGRAM%




:create1
cls
title Pick A Password
set /p PASSWORD= What do you want your password to be?:
echo %PASSWORD% > EvanPass.txt
cls
cls
cls
cls
echo Go To -MENU-
echo Go To -Loggedin1-
set /p AFTERLOGIN1= Go To:
goto %AFTERLOGIN1%


:Verify1
cls
title Login
set /p PASSWORD1=What is your password?:

for /f "Delims=" %%a in (EvanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct1
echo You are wrong!!!
pause
goto MENU




:correct1
cls
echo Successfully Logged In.
pause
goto Loggedin1

:Loggedin1
cls
title Evan's Terminal
echo To get to a category, enter a catagory name.
echo -Options1-
echo -Shortcut1-
set /p OPTION= Go To:
goto %OPTION%
pause

:Options1
cls
Title Evan's Terminal- Options
echo To get to a category, enter a catagory name.
echo -ChangePassword1-
echo -Exit-
echo -Back1-
set /p OPTIONS= Go To:
goto %OPTIONS%


:ChangePassword1
cls
goto Create1

:Exit
cls
goto MENU

:Back1
cls
goto Loggedin1



:Shortcut1
cls
title Evan's Terminal-Shortcuts
echo -Google1-
echo -Youtube1-
echo -Back1-
set /p OPTION2= Go To:
goto %OPTION2%

:Google1
start www.youtube.com
pause
goto Shortcut1

:Youtube1
start www.youtube.com
pause
goto Shortcut1










:create2
cls
title Create Password
set /p PASSWORD3= What do you want your password to be?:
echo %PASSWORD3% > RyanPass.txt
cls
echo Password created as %PASSWORD3%
echo Go To -MENU-
echo Go To -Loggedin1-
set /p AFTERLOGIN1= Go To:
goto %AFTERLOGIN1%


:Verify2
cls
title Ryan's Login
set /p PASSWORD2=What is your password?:

for /f "Delims=" %%a in (RyanPass.txt) do (

set TEXT=%%a

)

if %PASSWORD2%==%TEXT% goto correct2
echo You are wrong!!!
pause
goto MENU




:correct2
cls
title Ryan's Login
echo Successfully Logged In.
pause
goto Loggedin2

:Loggedin2
cls
title Ryan's Terminal
echo To get to a category, enter a catagory name.
echo -Options2-
echo -Shortcut2-
set /p OPTION2= Go To:
goto %OPTION2%
pause

:Options2
cls
title Ryan's Terminal- Options
echo To get to a category, enter a catagory name.
echo -ChangePassword2-
echo -Exit-
echo -Back2-
set /p OPTIONS= Go To:
goto %OPTIONS%


:ChangePassword2
cls
goto Create2

:Exit
cls
goto MENU

:Back2
cls
goto Loggedin2



:Shortcut2
cls
title Ryan's Terminal- Shortcut Menu
echo -Google2-
echo -Youtube2-
echo -Back2-
set /p OPTION2= Go To:
goto %OPTION2%

:Google2
start www.google.com
pause
goto Loggedin2


:Youtube2
start www.youtube.com
pause
goto Loggedin2
