
@echo on
for /f %%A in ('dir *.csv /a-d-s-h /b ^| find /v /c ""') do set cnt=%%A
echo File count = %cnt%

pause

rem setlocal enableextensions enabledelayedexpansion
rem 	:more_to_process
rem 		if %cnt% geq 5 (
rem 			//echo %x%
rem 			//copy the latest set of files to be processed.
rem 		
rem 			//goto :more_to_process
rem 		)
rem endlocal

rem pause

for %%b in ("copy_latest_brokerfee.bat" "copy_latest_drayage.bat" "copy_latest_invticket.bat" "copy_latest_labfee.bat" "copy_latest_oceanfrt.bat") do call %%b|| exit /b 1

pause
