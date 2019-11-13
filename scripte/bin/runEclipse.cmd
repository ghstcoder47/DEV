REM @ECHO OFF

call bin\setENV_default
set BASE_WORKSPACE_DIR=%~dp0../../workspace

IF "%1x" == "x" (

	set WORKSPACE="%BASE_WORKSPACE_DIR%/default"
) else (	

	set WORKSPACE=%BASE_WORKSPACE_DIR%/%1
)


IF "%2x" == "x" (

	set ECLIPSE_VERSION=jee-2019-09-R
)
set ECLIPSE_HOME=%DEV_TOOLS_DIR%/eclipse/%ECLIPSE_VERSION%


start %ECLIPSE_HOME%\eclipse -clean -consoleLog -refresh -data %WORKSPACE% -vm %JAVA_HOME%/bin/javaw