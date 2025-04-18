@echo off
setlocal enabledelayedexpansion

:: Delayed Expansion to demonstrate dynamic message in a loop
set counter=1
:loop
if !counter! leq 5 (
    echo Loop number: !counter! - Message: This is message !counter!
    set /a counter+=1
    goto loop
)

:: String Manipulation - Convert to UPPERCASE using PowerShell
set /p original=Enter a sentence in lowercase: 

:: Invoke PowerShell to convert the input to uppercase
for /f "delims=" %%i in ('powershell -Command "[Console]::WriteLine('%original%'.ToUpper())"') do set uppercase=%%i

echo Original sentence: %original%
echo UPPERCASE sentence: !uppercase!

:: Date and Time with Timestamped Log using PowerShell
for /f "delims=" %%i in ('powershell -Command "(Get-Date).ToString('yyyy-MM-dd_HH-mm')"') do set timestamp=%%i

:: Create log file with timestamp
echo Log created at %timestamp% > log_%timestamp%.txt
echo Log file created: log_%timestamp%.txt

endlocal
pause

