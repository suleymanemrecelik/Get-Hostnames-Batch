@ECHO OFF

TITLE Hostnames
COLOR c
IPCONFIG -flushdns 
ECHO;
ECHO;
ECHO The duration of this process varies according to the input size and the response times.
ECHO;
ECHO Processing...........................
ECHO; 

SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "tokens=*" %%a IN (input.txt) DO ( 
 FOR /F "tokens=2" %%b IN ('NSLOOKUP %%a^|FIND /i "Name"') DO (
    SET hostname=%%b
    SET temp=!hostname:*.=!
    CALL SET str=%%hostname:.!temp!=%%
    ECHO %%a    !str! >> output.txt
  )
)

ECHO READY!!!
ECHO;
PAUSE
START output.txt
