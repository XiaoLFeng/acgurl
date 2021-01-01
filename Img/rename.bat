@echo off
setlocal enabledelayedexpansion
set var=0  
echo %var%
set /a i = i + var
for  %%x in (*) do (
    if not "%%x"=="rename.bat" (
        set /a i+=1    
        rename "%%x" "image-!i!.jpg"     
    )
)
pause