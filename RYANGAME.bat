@echo off
color 00
title NOTEPAD GAME BY RYAN GUGGIANA
:LABEL1
echo This is a test of ur intel
echo go kys urself
set/p input=if u kys press f and hit ENTER but For settings press ? and ENTER: 
if %input%==? goto SETTINGS
if %input%==f goto LABEL2


:LABEL2
set/p input= grate job m8 for ur congrats screen type in CONGRATS and ENTER: 
if %input%==yes goto ENDSCREEN






:ENDSCREEN
echo ----------------------------------------------------------------------------------------
echo GOOD FUDGIN JOB NOW RESTART

echo ----------------------------------------------------------------------------------------

goto LABEL1






:SETTINGS
set/p input=1 = u kys urself but 2= u kys urself: _ _ _
if %input%==1 goto ENDSCREEN
if %input%==2 goto DEATHSCREEN





:DEATHSCREEN
color 40
echo ----------------------------
echo good job m8 u kys'd urself 
set/p input= well time to die if u wanna die type Okay or u die for real
if %input%==Okay goto LABEL1
if %input%==Okay color 0