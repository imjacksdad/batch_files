for /f %%i in ('dir *LabFeeVouch*.csv /b/od/t:w') do set LAST=%%i  & MOVE %%i \\tedfil01\InformaticaDEV\Process\BSM\labfeeVouch.csv & EXIT
