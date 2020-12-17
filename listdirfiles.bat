rem dir /b /a-d > fileist1.txt

dir  > fileist2.txt


rem for /f "tokens=*" %%A in (fileist1.txt) do echo %%~nxA >> filelist2.txt