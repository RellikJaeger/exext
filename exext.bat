@echo off
if [%1]==[] echo 1st argument (original extension) is null && goto :eg
if [%2]==[] echo 2nd argument (target extension) is null && goto :eg
setlocal enabledelayedexpansion
for %%i in (*.%1) do (
	set test=%%i
	echo.
	echo ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "!test!" "!test:~0,-4!.%2"
	echo.
	ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "!test!" "!test:~0,-4!.%2"
)
endlocal
goto :eof
:eg
echo.
echo Example: exext jpg png
echo.
echo ffmpeg -i *.jpg *.png
echo.
:eof
