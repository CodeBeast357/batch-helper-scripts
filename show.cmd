@ECHO OFF
SETLOCAL
SET INDEX=%2
SET FILTER="delims="
IF DEFINED INDEX SET FILTER="skip=%INDEX% delims="
FOR /F %FILTER% %%c IN ('where %1') DO (
    explorer /e,/select,"%%~c"
    IF DEFINED INDEX GOTO EOF
)
:EOF
ENDLOCAL
