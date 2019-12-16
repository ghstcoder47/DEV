@ECHO OFF

set ECLIPSE_VERSION=jee-2019-09-R
set BUILD_VERSION=4.13
set JAVA_VERSION="jdk-8"

call bin/runEclipse WS_%BUILD_VERSION%/default %ECLIPSE_VERSION%

REM start CMD /K 

REM "cd ../codeBase/GIT/"