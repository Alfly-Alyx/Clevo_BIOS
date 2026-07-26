@echo off

@set BIOS.ROM=BIOS.ROM

:: Flash ME

fptW64 -f %BIOS.ROM% -l 0x200000 -y
if errorlevel 1 goto End

AFUwinx64.exe %BIOS.ROM% /p /b /n /x /rlc:f

:End