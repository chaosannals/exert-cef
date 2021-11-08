@echo off
@setlocal enabledelayedexpansion

:: 这个不用了，不过还是留着吧。。。。

set ignoreDir=""
set ignoreDirs=jdk8u251

set ignoreFile=""
set ignoreFiles=.gitignore readme.md xpclean.bat xpcmake.bat xpcompile.bat

:: 删除文件夹
for /d %%i in (*) do (
    :: 遍历数组是否是忽略的
    set ignoreDir=""
    for %%j in (%ignoreDirs%) do (
        if /i %%j == %%i (
            set ignoreDir=%%i
        )
    )
    :: 如果不是忽略的就删除
    if /i !ignoreDir! == %%i (
        echo "save dir" %%i
    ) else (
        rd /s /q %%i
        echo "delete dir" %%i
    )
)

:: 删除文件
for %%i in (*) do (
    :: 遍历数组是否是忽略的
    set ignoreFile=""
    for %%j in (%ignoreFiles%) do (
        if /i %%j == %%i (
            set ignoreFile=%%i
        )
    )
    :: 如果不是忽略的就删除
    if /i !ignoreFile! == %%i (
        echo "save file" %%i
    ) else (
        del /f /s %%i
        echo "delete file" %%i
    )
)