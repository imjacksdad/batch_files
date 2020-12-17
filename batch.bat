@echo on
setlocal
rem change to the correct directory
cd /d N:\Archive\BSM
pause
rem list the files in the dir
dir /b *Ocean*.csv >> oceanlist1.txt
pause
rem for /f "tokens=*" %%A in (list1.txt) do echo %%~nxA
rem pause
rem del list1.txt
rem pause
FOR %%G IN (oceanlist1.txt) do find /n /i "GAVILON" "%%G"
pause