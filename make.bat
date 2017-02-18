@echo off

SET PATH=%PATH%;%CC65%

SET ORICUTRON="..\..\..\oricutron\"


%OSDK%\bin\xa.exe -C -W -e error.txt -l xa_labels.txt -o release\usr\bin\4kkong main.s -D__DATEBUILT__="%MYDATE%"  -DTARGET_TELEMON
IF "%1"=="NORUN" GOTO End
copy release\usr\bin\4kkong %ORICUTRON%\usbdrive\usr\bin
:End
