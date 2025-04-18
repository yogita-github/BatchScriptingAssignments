@echo off
:: Check if the folder "D:\repo2" exists, if not, create it
if not exist "D:\repo2" md "D:\repo2"

:: Copy the file "hello1.txt" from "D:\bashScripting" to "D:\repo2"
copy D:\bashScripting\hello1.txt D:\repo2\
