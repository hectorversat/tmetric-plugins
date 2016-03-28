@echo off
pushd "%~dp0"
cd /d %~dp0\src

call npm install
call npm update jpm
call gulp build

IF DEFINED TestServerUrl (
    call gulp build:test
)

popd
