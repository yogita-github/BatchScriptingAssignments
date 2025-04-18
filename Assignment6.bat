@echo off
setlocal EnableDelayedExpansion

:: Prompting the user to enter their name and age
set /p name=Enter your name: 
set /p age=Enter your age: 

:: Setting a variable 'a' to 18 for comparison
set a=18

:: Checking if the entered age is greater than or equal to 18 to classify the user as an adult or minor
if %age% geq %a% (
    echo Hello %name%, you are an adult.
) else (
    echo Hello %name%, you are a minor.
)

:: Creating a directory named after the user's name in the current folder
set "userDir=%cd%\%name%"
if not exist "%userDir%" (
    md "%userDir%"  :: This creates a folder with the user's name if it doesn't exist
)

:: Creating a multiplication table (1 to 5) and saving it in a text file within the user's directory
> "%userDir%\multiplication_table.txt" (
    for /l %%i in (1,1,5) do (
        for /l %%j in (1,1,10) do (
            set /a result=%%i * %%j
            echo %%i x %%j = !result!  :: Printing the multiplication result
        )
    )
)

:: Informing the user that the multiplication table has been saved
echo Multiplication table saved in %userDir%\multiplication_table.txt

:: Pinging Google to check internet connectivity and saving the result to a log file in the user's directory
ping -n 1 google.com > "%userDir%\ping_log.txt"
echo Ping result saved in %userDir%\ping_log.txt

:: Displaying the current date and time
echo Current Date: %date%
echo Current Time: %time%

endlocal  :: Ends the changes to environment variables

pause  :: Pauses the script to allow the user to read the output
