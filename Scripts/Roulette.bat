@Echo Off

#Set movies directory here
Set "source=D:\Movies"

SetLocal EnableDelayedExpansion
For /D %%A In ("%source%\*") Do Set "$[!RANDOM!]=%%A"
For /F "Tokens=1* Delims==" %%A In ('"Set $[ 2>Nul|Sort"'
) Do Set "target=%%B" & GoTo Found
Exit /B

:Found
Explorer "%target%"