@ECHO OFF
SETLOCAL
SET temp_file="%~f1.tmp"
FOR /F "delims=" %%s IN ('TYPE "%~f1"') DO (
    IF "%%s"=="%~2" (
        ECHO %~3>>%temp_file%
    ) ELSE (
        ECHO %%s>>%temp_file%
    )
)
SET temp_file=
ENDLOCAL