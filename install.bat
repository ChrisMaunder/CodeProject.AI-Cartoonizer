:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                           Cartoonizer
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat in
:: Dev setup, or ..\..\src\setup.bat in production
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

REM Backwards compatibility with Server 2.6.5
if "!utilsScript!" == "" if "!sdkScriptsDirPath!" NEQ "" set utilsScript=%sdkScriptsDirPath%\utils.bat

:: Download the models and store in /models
call "%utilsScript%" GetFromServer "models/" "cartooniser-models.zip" "weights" "Downloading Cartoonizer models..."

REM TODO: Check weights created and has files
REM set moduleInstallErrors=...
