@echo off

REM for /l %%i in (1,1,10) do (
	REM echo Looping %%i
REM )

REM setlocal EnableDelayedExpansion

REM for /L %%i in (1,1,5) do (
    REM for /L %%j in (1,1,10) do (
        REM set /a result=%%i * %%j
        REM echo %%i x %%j = !result!
    REM )
   
REM )
REM endlocal

:: Start local environment and enable delayed expansion (needed for variables inside loops)
setlocal EnableDelayedExpansion

:: Outer loop from 1 to 5 (for tables 1 to 5)
for /l %%i in (1,1,5) do (

    :: Inner loop from 1 to 10 (each table till 10)
    for /l %%j in (1,1,10) do (

        :: Multiply i and j and store in result
        set /a result=%%i * %%j

        :: Write the result in file called multiplication_table.txt
        echo %%i x %%j = !result! >> multiplication_table.txt
    )
)

:: Print message after saving
echo Table saved 

:: Show system drive (like C:)
echo %systemdrive%

:: Show all drives in system
fsutil fsinfo drives

:: End local environment
endlocal
