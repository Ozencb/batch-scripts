Various shell scripts

## Contents 

- **Batch Video Renamer:** Renames each video file within the root directory of the script to file's parent folder name. It can be used for renaming other file extensions by editing the script. Execute the script only within the root movie directory! It will rename every video file within the child folders.
- **Movie Roulette:** Opens a random folder within the specified directory. Manually edit the second line in the batch file to set the directory.
- **Compare Folders:** A differencing tool that creates tree views of folders. Manually edit the target folder and the output folder before executing the script. It will automatically launch [diffchecker.com](www.diffchecker.com), which can be used to compare output files.
- **Video Converter:** An FFMPEG conversion script. It takes two arguments, the first being which extension to convert and the second being target extension.
- **Blob Video Downloader:** An FFMPEG script that downloads blob videos. First argument takes a M3U8 file location, either a local file or a URL, and second argument takes output file name.
- **Video Merger:** An FFMPEG script that merges videos with the same file extension. First argument takes video extension and the second one takes output file name.
- **Youtube Downloaders:** Requires Python and Youtube-dl. These scripts download Youtube videos or audio.
