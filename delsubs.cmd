@FOR /F "delims=" %%f IN ('DIR /S /B /A:D "%~f1"^|SORT /R') DO @DEL /S /Q "%%f"