REM @echo off

REM X 4 -> 6 :::: 2
:BEGIN


REM --------------------------
TIMEOUT /T 4
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq vlc.exe" /FI "Status eq Running" /FO LIST ^| findstr /B "PID:"
') do (
   echo %%K>VLC.TXT
)

REM Pink (Family Portrait)
TIMEOUT /T 58
for /f "delims=" %%a in (VLC.txt) DO ( 
   TASKKILL /PID %%a
)

REM ------------------------
TIMEOUT /T 4
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq vlc.exe" /FI "Status eq Running" /FO LIST ^| findstr /B "PID:"
') do (
   echo %%K>VLC.TXT
)

REM Survivor - Eye of the tiger
TIMEOUT /T 63
for /f "delims=" %%a in (VLC.txt) DO ( 
   TASKKILL /PID %%a
)

REM ------------------------
TIMEOUT /T 4
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq vlc.exe" /FI "Status eq Running" /FO LIST ^| findstr /B "PID:"
') do (
   echo %%K>VLC.TXT
)

REM Tamia - So into you
TIMEOUT /T 60
for /f "delims=" %%a in (VLC.txt) DO ( 
   TASKKILL /PID %%a
)

REM ------------------------
TIMEOUT /T 4
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq vlc.exe" /FI "Status eq Running" /FO LIST ^| findstr /B "PID:"
') do (
   echo %%K>VLC.TXT
)

REM Whitney Houston - I Wanna Dance With Somebody (Official Video)
TIMEOUT /T 65
for /f "delims=" %%a in (VLC.txt) DO ( 
   TASKKILL /PID %%a
)

REM ------------------------
TIMEOUT /T 4
for /F "tokens=2" %%K in ('
   tasklist /FI "ImageName eq vlc.exe" /FI "Status eq Running" /FO LIST ^| findstr /B "PID:"
') do (
   echo %%K>VLC.TXT
)

REM Busta Rhymes feat. Zhané  -  It's A Party (Official Video)
TIMEOUT /T 53
for /f "delims=" %%a in (VLC.txt) DO ( 
   TASKKILL /PID %%a
)

GOTO BEGIN: