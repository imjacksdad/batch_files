for /f %%i in ('dir *DrayageVouch*.csv /b/od/t:w') do set LAST=%%i  & MOVE %%i \\tedfil01\InformaticaDEV\Process\BSM\DrayageVouch.csv & EXIT
