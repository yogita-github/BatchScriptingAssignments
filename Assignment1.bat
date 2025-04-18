@echo off
:: This hides the command lines when the program runs

:: Taking name input from user
set /p name="Enter your name :"
:: Printing the name
echo %name%

:: Taking age input from user
set /p age="Enter your age :"
:: Printing the age
echo %age%

:: Saying hello using name and age
echo "Hello this is %name% and my age is %age%"

:: Checking if age is greater than 18
if %age% GTR 18 (
    echo User is adult
) else (
    echo User is minor
)

:: Taking two numbers from user
set /p num1="Enter number 1:"
set /p num2="Enter number 2:"

:: Adding two numbers
set /a sum=%num1% + %num2%
echo %sum%

:: Subtracting two numbers
set /a difference=%num1% - %num2%
echo %difference%

:: Multiplying two numbers
set /a product=%num1% * %num2%
echo %product%

:: Dividing two numbers
set /a quotient=%num1% / %num2%
echo %quotient%


