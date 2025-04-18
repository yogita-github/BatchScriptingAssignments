@echo off
setlocal

:: Set the IP or hostname of the machine to be checked
set "ip=PTPL-145"

:: Ping the machine with the given IP or hostname, only once (-n 1), and discard the output (>nul)
ping %ip% -n 1 >nul

:: If the ping fails (errorlevel 1), display a message and exit the script
if errorlevel 1 (
    echo Machine %ip% is offline.
    echo Performing offline operations...
    exit /b 1
) else (
    :: If the ping is successful (errorlevel 0), display a message and proceed with online operations
    echo Machine %ip% is online.
    echo Performing online operations...
)

endlocal  :: End the batch processing and restore environment variables

pause  :: Pause the script so you can see the output before the window closes
