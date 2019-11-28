@ECHO OFF

set ECLIPSE_VERSION=jee-2019-09-R
set JAVA_VERSION="jdk-8"

call bin/runEclipse default %ECLIPSE_VERSION%

start CMD /K 

REM "cd ../codeBase/GIT/"