@echo off
:: Hides command lines when script runs
setlocal

:: Taking name and age from command line arguments
set "name=%1"
set "age=%2"

:: Path of the file to check
set "filepath=D:\bashScripting\hello1.txt"

:: Checking if file exists
if not exist "%filepath%" (
	echo Error: File does not exist
	exit /b 1
)

:: Calling greet function
call :greet

:: End of main script
goto :eof

:greet
:: Greeting message using name and age
echo Hello %name% ,your age might be %age% .Have a great evening
goto :eof
