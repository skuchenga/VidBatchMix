
:BEGIN

REM no remarks
"C:\Program Files\VideoLAN\VLC\vlc.exe" "%CD%\Videos\Pink (Family Portrait).mp4" --start-time=15

REM below Survivor - Eye of the tiger, timeout
TIMEOUT /T 65
"C:\Program Files\VideoLAN\VLC\vlc.exe"	"%CD%\Videos\Fabolous Ft Tamia - Into You.mp4" --start-time=02

REM below, Whitney - I wanna dance with somebody timeout
TIMEOUT /T 67
"C:\Program Files\VideoLAN\VLC\vlc.exe"	"%CD%\Videos\Busta Rhymes feat  Zhane -  It's A Party (Official Video).mp4" --start-time=25

GOTO BEGIN:
