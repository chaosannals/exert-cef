@echo off

echo here is %cd%

:: 设置 JDK
set JAVA_HOME=%cd%\jdk8u251
set PATH=%JAVA_HOME%\bin;%PATH%

:: 构建目录是特定的源码目录下 jcef_build
set jcef_build_dir=%cd%\..\jcef49\jcef_build
if not exist %jcef_build_dir% (
    mkdir %jcef_build_dir%
)
cd %jcef_build_dir%

:: 生成项目
echo here is %cd%
cmake -G "Visual Studio 12 2013" ..

