@echo on

::: Begin set date

for /f "tokens=1-4 delims=/-. " %%i in ('date /t') do (call :set_date %%i %%j %%k %%l)
goto :end_set_date

:set_date
if "%1:~0,1%" gtr "9" shift
for /f "skip=1 tokens=2-4 delims=(-)" %%m in ('echo,^|date') do (set %%m=%1&set %%n=%2&set %%o=%3)
goto :eof

:end_set_date

::: End set date

REM echo day in 'DD' format is %dd%; month in 'MM' format is %mm%; year in 'YYYY' format is %yy%

SET today=%yy%%mm%%dd%

rem del \\tedfil01\batchdev\bsm\ftp\ftp2\*.csv

"\\TEPFIL01\AppsPRD\WinSCP\winscp.com" ^
  /log="\\tedfil01\batchdev\bsm\ftp\WinSCP.log" /ini=nul ^
  /command ^
    "open sftp://gavilon:gAv1l0n%%2Fcntr%%2F020620@ftp.buysellmove.com/ -hostkey=""ecdsa-sha2-nistp256 256 VMLafM9moujwcI83izSyI5bvVHTVB2eNsaN247CPUao=""" ^
    "cd files/invoice_files/out/" ^
    "mv *.csv Xfer/" ^
	"cd Xfer/" ^
	"mget *.*" ^
	"rm *.csv" ^
    "exit"
	
move *.csv \\tedfil01\batchdev\bsm\ftp\


set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%