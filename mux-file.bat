REM Change location of installation file:
set mkvmerge="D:\Program Files\MKVToolNix\mkvmerge.exe"
REM Change output folder:
set output_folder="D:\Downloads\Torrents\Subbed.Hebsub"
set input_folder="%cd%"
@echo off 
@echo %cd%
pause
for /r %%a in (*.mkv) do call %mkvmerge% -o "%output_folder%\%%~na.mkv" --track-name 0:Hebrew --default-track 0:yes "%%~na.srt" --language 0:heb "%%a" --track-order 0:0
