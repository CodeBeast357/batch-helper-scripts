@FOR /F "delims=" %%d IN ('DIR /S /B /AD "%~f1"^|%SystemRoot%\System32\sort.exe /R') DO @ECHO "%%~fd" & @dircount "%%~fd"