@echo off
REM Compile toutes les classes du projet, puis lance les tests JUnit 6.
REM Usage:  run-tests.bat           lance toutes les classes de test
REM         run-tests.bat BoxTest   lance seulement BoxTest

set J=junit-platform-console-standalone-6.1.3.jar

javac -cp .;%J% -encoding UTF-8 *.java
if errorlevel 1 exit /b 1

if "%~1"=="" (
    java -jar %J% execute --class-path . --scan-class-path
) else (
    setlocal enabledelayedexpansion
    set SELECTION=
    for %%c in (%*) do set SELECTION=!SELECTION! --select-class %%c
    java -jar %J% execute --class-path . !SELECTION!
)
