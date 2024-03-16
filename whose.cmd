@FOR /F "delims=" %%f IN ('where %*') DO @powershell -Command "(Get-Acl \"%%~f\").Owner" 2>NUL || @whose.vbs "%%~f"
