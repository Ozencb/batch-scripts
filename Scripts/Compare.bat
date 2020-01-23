echo "A simple shell script that compares the contents of two folders. Manually edit the path before executing the script. Starting in 10 seconds..."
timeout 10

TREE  D:\Movies /A /F >D:\Downloads\Src.txt
TREE  E:\Movies /A /F >D:\Downloads\Dest.txt
%SystemRoot%\explorer.exe "D:\Downloads"
start "" https://www.diffchecker.com