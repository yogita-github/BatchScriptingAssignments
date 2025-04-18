@echo off
:: Set the source file path to "hello1.txt" in D:\bashScripting
set "source=D:\bashScripting\hello1.txt"

:: Set the destination network path to \\PTPL-135\repo2
set "destination=\\PTPL-135\repo2"

:: Ping the server PTPL-135 to check if it's reachable
ping PTPL-135

:: If the ping fails (errorlevel 1), exit the script with an error code
if errorlevel 1 exit /b 1

:: If the ping is successful, copy the file from the source to the destination
copy "%source%" "%destination%\"

endlocal  :: End the batch processing and restore environment variables

pause  :: Pause the script so you can see the output before the window closes
