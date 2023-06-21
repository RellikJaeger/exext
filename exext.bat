@echo off
setlocal enabledelayedexpansion

if [%1]==[] echo 1st argument (original extension) is null && goto :eg
if [%2]==[] echo 2nd argument (target extension) is null && goto :eg

if [%2]==[avif] (
	for %%f in (*.%1) do (
		echo.
		echo ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "%%f" -c:v librav1e -qp 100 "%%~nf.%2"
		echo.
		ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "%%f" -c:v librav1e -qp 100 "%%~nf.%2"
	)
	goto :eof
)

for %%f in (*.%1) do (
	echo.
	echo ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "%%f" "%%~nf.%2"
	echo.
	ffmpeg -hide_banner -y -threads 4 -hwaccel auto -i "%%f" "%%~nf.%2"
)

goto :eof

:eg
echo.
echo Example: exext jpg png
echo.
echo ffmpeg -i *.jpg *.png
echo.

:eof
