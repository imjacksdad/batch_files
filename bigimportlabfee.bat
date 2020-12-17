@setlocal enableextensions enabledelayedexpansion
@echo off

SET OutFile="\\tedfil01\InformaticaDEV\Process\BSM\labfeeVouch.csv"

net use f: \\tedfil01\BatchDEV\BSM\FTP
f:

for /f %%i in ('dir "f:\*labfee*.csv" /b /od /t:c') do (
	for /F "skip=1 delims=" %%a in (%%i) do ( 
		set "string=%%a"
		set filedate=%%i

		rem echo The first 8 characters are !filedate:~0,8!
		echo !string!"!filedate:~0,8!_!filedate:~8,6!"
	 	echo !string!"!filedate:~0,8!_!filedate:~8,6!" >> !Outfile!
	)
)

endlocal