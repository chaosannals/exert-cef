@echo off

set DEPOT_TOOLS_UPDATE=0
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GN_DEFINES=is_component_build=true
:: Use vs2017 or vs2019 as appropriate.
set GN_ARGUMENTS=--ide=vs2019 --sln=cef --filters=//cef/*
python .\automate\automate-git.py --download-dir=.\chromium_git --depot-tools-dir=.\depot_tools --no-distrib --no-build
