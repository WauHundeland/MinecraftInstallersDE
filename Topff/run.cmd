@echo off
:DE
echo Willkommen im ModInstaller!
:MOD
set MODINP=
set /P MODINP=Wähle die Modpacks(Custom/Default):  %=%
If /I "%MODINP%"=="Custom" goto cus 
If /I "%MODINP%"=="Default" goto def
goto MOD
:cus
echo Es werden Mods im Ordner "modsCustom" installiert.  
echo Warte 10 Sekunden oder drücke eine Taste zum fortfahren.
timeout /T 10
:wtf
set INPUT=
set /P INPUT=Type version: %=%
If /I "%INPUT%"=="1.12.2" goto 1.12 
If /I "%INPUT%"=="1.14.4" goto 1.14
If /I "%INPUT%"=="1.15.2" goto 1.15
If /I "%INPUT%"=="1.16.1" goto 1.16
goto wtf
:modINS
move "modsCustom\*.jar" "%appdata%\.minecraft\mods"
echo ------------------------------------------------------------------------------
echo                   Alle Mods wurden erfolgreich installiert!
echo ------------------------------------------------------------------------------
goto END
:def
echo Es werden vorgeschlagene Mods installiert. Sicher? Wenn ja, 
pause
java -jar forge\forgeDEFAULT.jar
move "modsDefault\*.jar" "%appdata%\.minecraft\mods"
echo ------------------------------------------------------------------------------
echo                   Alle Mods wurden erfolgreich installiert!
echo ------------------------------------------------------------------------------
goto END

:1.12
java -jar forge\forge1.12.jar
goto MODINS
:1.14
java -jar forge\forge1.14.jar
goto MODINS
:1.15
java -jar forge\forge1.15.jar
goto MODINS
:1.16
java -jar forge\1.16.1.jar
goto MODINS
:END
pause
pause
pause