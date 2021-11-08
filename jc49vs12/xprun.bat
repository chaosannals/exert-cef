@echo off

echo here is %cd%

:: 设置 JDK
set JAVA_HOME=%cd%\jdk8u251
set PATH=%JAVA_HOME%\bin;%PATH%

:: 编译工具目录
cd ..\jcef49\tools

@echo on
call run.bat win32 Release detailed
