@ECHO OFF
SETLOCAL
FOR /F "delims=" %%v IN ('DATE /T') DO (
    SET #=%%v
)
FOR /F "delims=" %%v IN ('TIME /T') DO (
    SET #=%#% %%v
)
SET LENGTH=0
:COUNT
IF DEFINED # (
    SET #=%#:~1%
    SET /A LENGTH+=1
    GOTO COUNT
)
FOR /F "delims=" %%c IN ('where %*') DO (
    SET done=
    FOR /F "skip=5 delims=" %%f IN ('DIR /4 /-B "%%~c" 2^>NUL') DO (
        SET info=%%f
        IF NOT DEFINED done CALL ECHO %%info:~0,%LENGTH%%%
        SET done=1
    )
)
:EOF
ENDLOCAL
