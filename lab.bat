rem  copy file1.txt + file2.txt + file3.txt concattedfile.txt

rem dir *lab* /b /a-d
rem pause

for %%i in (*labfeevouch*.csv) do type %%i >> newlab.csv

pause