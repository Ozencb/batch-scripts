for %%i in (*.%1) do echo file '%%i'>> videolist.txt
ffmpeg -f concat -safe 0 -i videolist.txt -c copy %2.%1