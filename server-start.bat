@ECHO off
call nginx-start
call mysql-start
popd
EXIT /b