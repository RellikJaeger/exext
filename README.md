# `exext.bat` for Windows cmd
### `exext.bat` is a script to batch transcode multimedia files in the same folder using `FFmpeg` without entering the file names.
  
### Before using this script, you must install `FFmpeg` and should be accessible from cmd.
---
#### Put this `exext.bat` file into `%SystemRoot%` ("C:\Windows\") folder.
#### Go to a folder with jpg image files, open cmd there and type the following command:
```cmd
exext jpg png
```
#### This will transcode your jpg files to png files.
#### This can also be used for multimedia files supported by `FFmpeg`.
- webm to mp4
```cmd
exext webm mp4
```
- mkv to mp4
```cmd
exext mkv mp4
```
- mp4 to mp3
```cmd
exext mp4 mp3
```
