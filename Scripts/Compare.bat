echo "A simple shell script that compares the contents of two folders. Manually edit the path before executing the script. Starting in 3 seconds..."
timeout 3

#Set directory 1 here and make sure that target root for output txt file exists
TREE  D:\Movies /A /F >D:\Src.txt

#Set directory 2 here and make sure that target root for output txt file exists
TREE  E:\Movies /A /F >D:\Dest.txt

%SystemRoot%\explorer.exe "D:\"
start "" https://www.diffchecker.com