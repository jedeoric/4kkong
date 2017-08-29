@echo off


SET BINARYFILE=4kkong
SET PATH_RELEASE=build\usr\share\%BINARYFILE%\
SET ORICUTRON="..\..\..\oricutron\"
set VERSION=1.0.0
SET ORIGIN_PATH=%CD%
echo %osdk%
SET PATH=%PATH%;%CC65%

echo Cleaning build folder

del /F /S /Q build\
          
mkdir build\usr\share\doc\
mkdir build\usr\share\doc\%BINARYFILE%
mkdir build\usr\share\man
mkdir build\usr\bin\

IF NOT EXIST build\usr\share\ipkg mkdir build\usr\share\ipkg      

echo Building version.h
echo #define VERSION "%VERSION%" > src\version.h
rem  123456789012345678
echo Building ipkg csv
echo 4kkong    1.0.0  Kong game > src\ipkg\%BINARYFILE%.csv
echo Copy README.md
copy README.md build\usr\share\doc\%BINARYFILE%


%OSDK%\bin\xa.exe -C -W -e error.txt -l xa_labels.txt -o build\usr\bin\4kkong main.s -D__DATEBUILT__="%MYDATE%"  -DTARGET_TELEMON
IF "%1"=="NORUN" GOTO End
copy build\usr\bin\4kkong %ORICUTRON%\usbdrive\usr\bin
:End
