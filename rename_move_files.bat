@echo on

query user

whoami

echo %username%


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

rem copy  \\%File01%\%BatchShare%\BSM\FTP\*.csv \\%File01%\%IFM_Folder%\Archive\BSM\

ren \\%File01%\%BatchShare%\BSM\FTP\*BrokerFeeVouch*.csv BrokerFeeVouch.csv
ren \\%File01%\%BatchShare%\BSM\FTP\*DrayageVouch*.csv DrayageVouch.csv
ren \\%File01%\%BatchShare%\BSM\FTP\*invticket*.csv invticket.csv
ren \\%File01%\%BatchShare%\BSM\FTP\*LabFeeVouch*.csv LabFeeVouch.csv
ren \\%File01%\%BatchShare%\BSM\FTP\*OceanFrtVouch*.csv OceanFrtVouch.csv

move \\%File01%\%BatchShare%\BSM\FTP\*.csv \\%File01%\%IFM_Folder%\Process\BSM\
