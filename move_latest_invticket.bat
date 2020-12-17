for /f %%i in ('dir *invticket*.csv /b/od/t:w') do set LAST=%%i  & MOVE %%i \\tedfil01\InformaticaDEV\Process\BSM\invticket.csv & EXIT
