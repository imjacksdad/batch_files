@setlocal enableextensions enabledelayedexpansion
@echo off

SET OutFile="\\tedfil01\InformaticaDEV\Process\BSM\invticket.csv"

net use f: \\tedfil01\BatchDEV\BSM\FTP
f:

for /f %%i in ('dir f:\*invticket*.csv /b/od/t:w') do (

	for /F "skip=1 delims=" %%a in (%%i) do ( 
	rem echo %%a
		set "string=%%a"
		set filedate=%%i
		rem pause
		if /i "!string:~1,6!"=="ACTIVE" (
			rem echo The first 8 characters are !filedate:~0,8!
			echo !string!"!filedate:~0,8!_!filedate:~8,6!"
			echo !string!"!filedate:~0,8!_!filedate:~8,6!" >> !Outfile!	
			) else (
				if /i "!string:~1,8!"=="COMPLETE" (
					rem echo The first 8 characters are !filedate:~0,8!
					echo !string!"!filedate:~0,8!_!filedate:~8,6!"
					echo !string!"!filedate:~0,8!_!filedate:~8,6!" >> !Outfile!	
					) else (
						if /i "!string:~1,9!"=="CANCELLED" (
							rem echo The first 8 characters are !filedate:~0,8!
							echo !string!"!filedate:~0,8!_!filedate:~8,6!"
							echo !string!"!filedate:~0,8!_!filedate:~8,6!" >> !Outfile!	
							) else (
							echo "bad file"
							)
						)
				)
		)
)
endlocal


