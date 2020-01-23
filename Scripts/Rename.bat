#A small script that renames the each video file within the root directory of the script to file's parent folder name. Copy the batch file to main movie folder before running!

@echo off
for /r /d %%x in (*) do (
 pushd "%%x"
 echo %%x
 for /F "delims=" %%i in ("%%x") do (
  ren *.mkv "%%~ni.mkv" 2> NUL
  ren *.avi "%%~ni.avi" 2> NUL
  ren *.mp4 "%%~ni.mp4" 2> NUL
  ren *.srt "%%~ni.srt" 2> NUL
 )
 popd
)