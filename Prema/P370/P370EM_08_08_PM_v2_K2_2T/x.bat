@echo off
echo.
echo.
echo   ***********************************************************
echo   This is to update the system EC & BIOS for model P370EM/NP9370  series to: 
echo.
echo   EC   V1.02.08PM FN+1 EDITION
echo   BIOS V1.02.08PM v2
echo.
echo   Please make sure you have the right model of computer.
echo   (If this firmware are applied to a non-
echo   P370EM/NP9370 model, the computer may be non-operative.)
echo.
echo.
echo   Please make sure the computer is on AC power.
echo.
echo   The system will automatically shut down after the process is finished.
echo   Press any key to continue or press "Ctrl" + "C" to quit.
echo.
echo   ***********************************************************
pause
afudos P37E88.PM2 /E /P /B /N /X /SHUTDOWN %1 %2 %3 %4
