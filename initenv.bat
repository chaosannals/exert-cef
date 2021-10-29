@echo off

set WORK_DIR=%~dp0
set GN_DEFINES=is_component_build=true
:: Use vs2017 or vs2019 as appropriate.
set GN_ARGUMENTS=--ide=vs2019 --sln=cef --filters=//cef/*
python %WORK_DIR%automate-git.py --download-dir=%WORK_DIR%chromium_git --depot-tools-dir=%WORK_DIR%depot_tools --no-distrib --no-build