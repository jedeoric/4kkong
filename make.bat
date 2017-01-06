

%OSDK%\bin\xa.exe -C -W -e error.txt -l xa_labels.txt -o release\4kkong main.s -D__DATEBUILT__="%MYDATE%"  -DTARGET_TELEMON
IF "%1"=="NORUN" GOTO End
copy release\4kkong ..\..\..\oricutron\usbdrive
:End
