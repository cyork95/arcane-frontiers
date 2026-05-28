@echo off
:: ================================================================
:: start.bat — Arcane Frontiers Server Launcher
:: NeoForge 1.21.1 | Windows
::
:: SETUP INSTRUCTIONS (run once before first use):
::   1. Install NeoForge server:
::        java -jar neoforge-21.1.x-installer.jar --installServer
::      This creates run.bat, run.sh, and the libraries folder.
::   2. Open eula.txt and change eula=false to eula=true
::   3. Copy your config\ and defaultconfigs\ folders here
::   4. Run this script: double-click start.bat
::
:: This script:
::   - Verifies Java 21 is installed before launching
::   - Uses user_jvm_args.txt for tuned GC flags
::   - Auto-restarts the server if it crashes
::   - Displays clear status messages for non-technical family members
:: ================================================================

title Arcane Frontiers Server

:: ----------------------------------------------------------------
:: JAVA VERSION CHECK
:: NeoForge 1.21.1 requires Java 21. Earlier versions will crash
:: with cryptic errors. This check catches it clearly.
:: ----------------------------------------------------------------
echo.
echo  ================================================
echo   Arcane Frontiers -- Family Server
echo   NeoForge 1.21.1 / Minecraft 1.21.1
echo  ================================================
echo.
echo  [1/3] Checking Java version...

java -version 2>&1 | findstr /i "version" > nul
if errorlevel 1 (
    echo.
    echo  ERROR: Java was not found on this machine.
    echo  NeoForge 1.21.1 requires Java 21.
    echo.
    echo  Download Java 21 from:
    echo    https://adoptium.net/
    echo  Choose: Temurin 21 LTS - Windows x64 Installer
    echo.
    pause
    exit /b 1
)

:: Extract Java major version number
for /f "tokens=3" %%g in ('java -version 2^>^&1 ^| findstr /i "version"') do (
    set JAVA_VERSION_STRING=%%g
)
:: Remove quotes from version string
set JAVA_VERSION_STRING=%JAVA_VERSION_STRING:"=%
:: Get major version (everything before first dot)
for /f "delims=." %%a in ("%JAVA_VERSION_STRING%") do set JAVA_MAJOR=%%a

if "%JAVA_MAJOR%"=="1" (
    echo.
    echo  ERROR: Java 8 or older detected. NeoForge 1.21.1 requires Java 21.
    echo  Download Java 21 from: https://adoptium.net/
    echo.
    pause
    exit /b 1
)

if %JAVA_MAJOR% LSS 21 (
    echo.
    echo  ERROR: Java %JAVA_MAJOR% detected. NeoForge 1.21.1 requires Java 21.
    echo  Your current Java version will not run this server.
    echo  Download Java 21 from: https://adoptium.net/
    echo.
    pause
    exit /b 1
)

echo  Java %JAVA_MAJOR% found. OK.

:: ----------------------------------------------------------------
:: EULA CHECK
:: ----------------------------------------------------------------
echo  [2/3] Checking EULA acceptance...

if not exist eula.txt (
    echo.
    echo  First run detected -- generating eula.txt...
    echo  You must accept the Minecraft EULA to run a server.
    echo  Read it at: https://aka.ms/MinecraftEULA
    echo.
    echo  After reading: open eula.txt in this folder and
    echo  change  eula=false  to  eula=true  then re-run this script.
    echo.
    :: Run NeoForge once to generate eula.txt, then exit
    call run.bat nogui
    pause
    exit /b 0
)

findstr /i "eula=true" eula.txt > nul
if errorlevel 1 (
    echo.
    echo  ERROR: EULA not accepted.
    echo  Open eula.txt in this folder and change eula=false to eula=true
    echo.
    pause
    exit /b 1
)

echo  EULA accepted. OK.

:: ----------------------------------------------------------------
:: VERIFY run.bat EXISTS (NeoForge installer generates it)
:: ----------------------------------------------------------------
echo  [3/3] Checking NeoForge installation...

if not exist run.bat (
    echo.
    echo  ERROR: run.bat not found.
    echo  NeoForge has not been installed yet.
    echo.
    echo  Steps to install:
    echo    1. Download the NeoForge 1.21.1 server installer from:
    echo         https://neoforged.net/
    echo    2. Place the installer jar in this folder (C:\ArcaneServer\)
    echo    3. Run: java -jar neoforge-21.1.x-installer.jar --installServer
    echo    4. Then run start.bat again.
    echo.
    pause
    exit /b 1
)

echo  NeoForge installation found. OK.

:: ----------------------------------------------------------------
:: LAUNCH LOOP
:: Server auto-restarts after a crash. A clean shutdown (/stop
:: command) exits with code 0 and does NOT restart.
:: ----------------------------------------------------------------

:LAUNCH
echo.
echo  ================================================
echo   Starting Arcane Frontiers...
echo   To stop the server cleanly, type: /stop
echo   (Do NOT close this window -- use /stop instead)
echo  ================================================
echo.

:: NeoForge reads user_jvm_args.txt automatically when run.bat is called.
:: The JVM flags in that file (Aikar G1GC flags) are applied here.
call run.bat nogui

:: Check the exit code NeoForge/Java returned
set EXIT_CODE=%errorlevel%

if %EXIT_CODE% EQU 0 (
    :: Clean shutdown via /stop command
    echo.
    echo  ================================================
    echo   Server stopped cleanly. Goodbye!
    echo  ================================================
    echo.
    timeout /t 5
    exit /b 0
)

:: Non-zero exit = crash or forced kill
echo.
echo  ================================================
echo   SERVER CRASHED (exit code: %EXIT_CODE%)
echo.
echo   Check logs\latest.log for the crash cause.
echo   Also check crash-reports\ for a full report.
echo.
echo   Common causes with this modpack:
echo    - MineColonies citizen cap too high (reduce
echo      maxcitizenspercolony in config\minecolonies-common.toml)
echo    - Twilight Forest progression lock error
echo      (run /tfprogress reset @a after restart)
echo    - Alex's Mobs entity overflow near ocean biomes
echo      (reduce entity-broadcast-range in server.properties)
echo.
echo   Restarting in 10 seconds...
echo   Press CTRL+C to cancel the restart.
echo  ================================================
echo.

timeout /t 10

echo  Restarting server...
goto LAUNCH
