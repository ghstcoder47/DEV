@ECHO OFF

REM version 4.13.0
set ECLIPSE_VERSION=-eclipse-version
set JAVA_VERSION="jdk-version"
set WORKSPACE = -projekt-

call bin/runEclipse %WORKSPACE% %ECLIPSE_VERSION%

start CMD /K "cd ../codeBase/SVN/"
REM start CMD /K "cd ../GIT "