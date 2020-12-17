rem dir *.csv /o n
rem pause

rem FOR %%f IN (*.csv) DO ECHO %%f
rem pause

for /f "usebackq" %%f in (`dir *.csv /b /ON`) DO ECHO %%f
pause