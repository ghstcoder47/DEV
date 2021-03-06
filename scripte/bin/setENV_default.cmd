@ECHO OFF

set DEV_TOOLS_DIR=%~dp0../../tools
set SOURCE_CODE_ROOT=%~dp0../../../sourceCode


IF "%JAVA_VERSION%x" == "x" (

	set JAVA_VERSION="jdk-11"
)

IF "%JDK_DIST%x" == "x" (
	set JDK_DIST=openjdk
)

set JAVA_HOME=%DEV_TOOLS_DIR%/java/%JDK_DIST%/%JAVA_VERSION%


set MAVEN_DIR=apache-maven
IF "%MAVEN_VERSION%x" == "x" (

	set MAVEN_VERSION="3.6.2"
)
set MAVEN_HOME=%DEV_TOOLS_DIR%/maven/%MAVEN_DIR%-%MAVEN_VERSION%
REM set MAVEN_OPTS=-Xms1024m -Xmx3000m -Xss2M -Dmaven.surefire.debug=-Xmx3000m
set MAVEN_OPTS=-Xms1024M -Xmx1024M -Xss1024M

set GRADLE_HOME=%DEV_TOOLS_DIR%/gradle/gradle-6.1.1

set MONGO_PATH=%DEV_TOOLS_DIR%/mongodb


set PATH=%MAVEN_HOME%/bin;%JAVA_HOME%/bin;%GRADLE_HOME%/bin;%PATH%