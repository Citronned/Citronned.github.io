@echo off
:loophere
md .temp
cls
powershell wget https://citronned.github.io/comms.txt -OutFile .temp/file.txt
for /f "tokens=*" %%A in (.temp/file.txt) do (echo %%A)
::timeout /t -1
timeout /t 15 /nobreak > nul
GOTO:loophere