@ECHO OFF

pushd D:\nginx
ECHO Starting NGINX
start nginx.exe


ECHO Starting PHP FastCGI On 127.0.0.1:9001...

set PHP_FCGI_MAX_REQUESTS=0
set PHP_FCGI_CHILDREN=10

RunHiddenConsole.exe "d:\nginx\php\php-cgi.exe" -b 127.0.0.1:9001

popd
EXIT /b