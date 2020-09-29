@ECHO off
rem domain name for project folder, conf, and hosts
set domainName=sample.nginx
rem type of project for conf
set projectType=laravel
rem git repo, if empty batch will make empty direction
set gitRepo=NONE
rem get user inputs
set /p domainName=Website Name... (default - %domainName%)?:
set /p projectType=Website Type... (default - %projectType%)?:
set /p gitRepo=Website Git Repositroy... (default - %gitRepo%)?:

rem update hosts file
ECHO 127.0.0.1	%domainName%>>"C:/Windows/System32/drivers/etc\hosts"
ECHO Added Website %domainName% To Hosts File

rem Set Configs Paths
set configSamplePath=D:\nginx\conf\sites-enabled-sample\
set configSetPath=D:\nginx\conf\sites-enabled\%domainName%.conf

rem Handle The Configs
if %projectType% == laravel cp %configSamplePath%laravel.conf %configSetPath% && powershell -Command "(gc %configSetPath%) -replace '%projectType%.nginx', '%domainName%' | Out-File -encoding ASCII %configSetPath%"
if not %projectType% == laravel cp %configSamplePath%default.conf %configSetPath% && powershell -Command "(gc %configSetPath%) -replace 'default.nginx', '%domainName%' | Out-File -encoding ASCII %configSetPath%"
ECHO Generated Config File Into %configSetPath%

rem set Web Path and create the project folder
if %gitRepo%==NONE mkdir D:\nginx\www\%domainName%
if not %gitRepo%==NONE git clone %gitRepo% D:\nginx\www\%domainName%
ECHO Generated Project Folder Into D:\nginx\www\%domainName%