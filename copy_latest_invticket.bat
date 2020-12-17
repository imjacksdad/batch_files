for /f %%i in ('dir *invticket*.csv /b/od/t:w') do set LAST=%%i  & copy %%i \\tedfil01\InformaticaDEV\Archive\BSM\ & EXIT
