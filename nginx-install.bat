@ECHO oFF

call Powershell.exe -executionpolicy remotesigned -File G:\nginx\set-system-veriables.ps1

if exist G:\nginx\conf\sites-enabled echo conf\sites-enabled Folder Already Exist
if not exist G:\nginx\conf\sites-enabled mkdir G:\nginx\conf\sites-enabled

if exist G:\nginx\php echo php Folder Already Exist
if not exist G:\nginx\php mkdir G:\nginx\php

if exist G:\nginx\www echo www Folder Already Exist
if not exist G:\nginx\www mkdir G:\nginx\www

REM create mission dirs
mkdir G:\nginx\logs
mkdir G:\nginx\temp
mkdir G:\nginx\temp\client_body_temp
mkdir G:\nginx\temp\fastcgi_temp
mkdir G:\nginx\temp\proxy_temp
mkdir G:\nginx\temp\scgi_temp
mkdir G:\nginx\temp\uwsgi_temp

echo.> G:\nginx\logs\access.log
echo.> G:\nginx\logs\error.log
echo.> G:\nginx\logs\nginx.pid

EXIT /b