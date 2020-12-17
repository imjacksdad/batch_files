for /f %%i in ('dir *DrayageVouch*.csv /b/od/t:w') do set LAST=%%i  & copy %%i \\tedfil01\InformaticaDEV\Archive\BSM\ & EXIT
