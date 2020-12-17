for /f %%i in ('dir *LabFeeVouch*.csv /b/od/t:w') do set LAST=%%i  & copy %%i \\tedfil01\InformaticaDEV\Archive\BSM\ & EXIT
