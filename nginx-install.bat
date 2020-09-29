@ECHO oFF

call Powershell.exe -executionpolicy remotesigned -File D:\nginx\set-system-veriables.ps1

if exist D:\nginx\conf\sites-enabled echo conf\sites-enabled Folder Already Exist
if not exist D:\nginx\conf\sites-enabled mkdir D:\nginx\conf\sites-enabled

if exist D:\nginx\php echo php Folder Already Exist
if not exist D:\nginx\php mkdir D:\nginx\php

if exist D:\nginx\www echo www Folder Already Exist
if not exist D:\nginx\www mkdir D:\nginx\www

set emptyVar=

echo.> D:\nginx\logs\access.log
echo.> D:\nginx\logs\error.log
echo.> D:\nginx\logs\nginx.pid

EXIT /b