@echo Iniciando a limpeza

rem criado por Natan Carlos Silva

Title reiniciando o explorer
echo off
rem TASKKILL /F /IM explorer.exe
rem start explorer.exe

title reiniciando windows explorer
taskkill /f /im explorer.exe
start explorer.exe

title fechando navegadores
TASKKILL /f /IM chrome.exe
TASKKILL /f /IM firefox.exe
TASKKILL /f /IM iexplorer.exe

title Executando Limpeza

cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (

erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

@rem Clear Google Chrome cache (tirei porque está apagando favoritos e perfil do chrome)
rem erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
rem for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"

@rem Clear Firefox cache (tirei porque está apagando favoritos e perfil do firefox)
rem erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
rem for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

cls
title Deletando %%u COOKIES. . .
if exist "%profiles%\%%u\cookies" echo Deletando....
if exist "%profiles%\%%u\cookies" cd "%profiles%\%%u\cookies"
if exist "%profiles%\%%u\cookies" del *.* /F /S /Q /A: R /A: H /A: A

cls
title Deletando %%u Temp Files. . .
if exist "%profiles%\%%u\Local Settings\Temp" echo Deletando....
if exist "%profiles%\%%u\Local Settings\Temp" cd "%profiles%\%%u\Local Settings\Temp"
if exist "%profiles%\%%u\Local Settings\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temp" rmdir /s /q "%profiles%\%%u\Local Settings\Temp"

cls
title Deletando %%u Temp Files. . .
if exist "%profiles%\%%u\AppData\Local\Temp" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Temp" cd "%profiles%\%%u\AppData\Local\Temp"
if exist "%profiles%\%%u\AppData\Local\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Temp" rmdir /s /q "%profiles%\%%u\AppData\Local\Temp"

cls
title Deletando %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" echo Deletando....
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" cd "%profiles%\%%u\Local Settings\Temporary Internet Files"
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\Local Settings\Temporary Internet Files"

cls
title Deletando %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"

cls
title Deletando %%u WER Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"

cls
title Deletando %Systemroot%\Temp
if exist "%Systemroot%\Temp" echo Deletando....
if exist "%Systemroot%\Temp" cd "%Systemroot%\Temp"
if exist "%Systemroot%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%Systemroot%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls
title Deletando %SYSTEMDRIVE%\Temp
if exist "%SYSTEMDRIVE%\Temp" echo Deletando....
if exist "%SYSTEMDRIVE%\Temp" cd "%SYSTEMDRIVE%\Temp"
if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls
title Deletando %%u FIREFOX TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"

cls
title Deletando %%u CHROME TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"

cls
title Deletando %%u EDGE TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"

cls
title Deletando %%u EDGE COOKIES. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"

cls
title Deletando %%u OPERA TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"

echo off

IF EXIST c:\windows\temp\ del /f /s /q c:\windows\temp\

IF EXIST c:\Windows\SoftwareDistribution\ del /f /s /q c:\Windows\SoftwareDistribution\

IF EXIST C:\Windows\Prefetch\ del /f /s /q c:\Windows\Prefetch\

DEL /f /s /q %temp%\

IF EXIST “C:\Documents and Settings\” (
for /D %%x in (“C:\Documents and Settings\*”) do (
rmdir /s /q “%%x\Local Settings\Temporary Internet Files”
)
)

IF EXIST “C:\Documents and Settings\” (
for /D %%x in (“C:\Documents and Settings\*”) do (
rmdir /s /q “%%x\Local Settings\Temp”
)
)

IF EXIST “C:\Users\” (
for /D %%x in (“C:\Users\*”) do (
rmdir /s /q “%%x\AppData\Local\Temp”
)
)

IF EXIST “C:\Users\” (
for /D %%x in (“C:\Users\*”) do (
rmdir /s /q “%%x\AppData\Local\Microsoft\Windows\Temporary Internet Files”
)
)

title esvaziando lixeira
echo off
forfiles /P c:\$Recycle.Bin  /c "cmd /c del @path /q & rd @path /s /q"
forfiles /P c:\recycler   /c "cmd /c del @path /q & rd @path /s /q"

title apagando arquivos temporarios
echo off
forfiles /P C:\Windows\Temp /c "cmd /c del @path /q & rd @path /s /q"
forfiles /P C:\Users\User\AppData\Local\Temp /c "cmd /c del @path /q & rd @path /s /q"

forfiles /P C:\Users\User\AppData\Local\Google\Chrome\User Data\Default\Cache /c "cmd /c del @path /q & rd @path /s /q"

rem coloquei a msocache tambem que apaga o cd do office
rmdir /s /q “c:/MSOcache”

del c:*.tmp /q/f
del c:*.log /q/f
del c:windows*.tmp /q/f
del c:windows*.log /q/f
del c:windowstemp*.* /s /q/f
del c:windowstempor~1*.* /s /q/f
attrib -h c:*.sqm
del c:*.sqm /q/f
del “%temp%*.*” /s/q/f
del “%userprofile%appdatalocaltempor~1*.*” /s/q/f
del “%userprofile%appdatalocalmicrosoftwindowstempor~1*.*” /s/q/f

DEL /F/S/Q %WINDIR%\*.TMP
DEL /F/S/Q %WINDIR%\TEMP\*.*
FOR /D %%d IN (“%WINDIR%\TEMP\*.*”) DO RD /S /Q “%%d”
DEL /F/S/Q %WINDIR%\Prefetch\*.*
DEL /F/S/Q %APPDATA%\Skype\My Skype Received Files\*.*

Title resetando proxy se houver
echo off
netsh winhttp>reset proxy

Title redefinindo config internet explorer
echo off
rundll32 inetcpl.cpl ResetIEtoDefaults

Title Procedimento Concluido

@echo off
cls
@echo.
@echo    ***********************************************
@echo    ***              Parabens                   ***
@echo    ***       Seu computador esta limpo!        ***
@echo    ***********************************************
@echo.
pause
