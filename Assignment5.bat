@echo off
setlocal

:: Pinging Google's DNS (8.8.8.8) to check for network connectivity
ping 8.8.8.8

:: Printing the current date
echo %date%

:: Printing the current time
echo %time%

:: Setting a directory path variable to "D:\bashScripting"
set "dirPath=D:\bashScripting"

:: Checking if the directory exists; if it doesn't, create it
if not exist "%dirPath%" (
    md "%dirPath%"  :: This creates the directory
)

:: Changing to the specified directory
cd "%dirPath%"

:: Listing the contents of the directory and saving the output to a file named "test.txt"
dir > test.txt

:: Ending the script execution and restoring the previous environment
endlocal

:: Pausing the script so you can see the output before closing the window
pause
