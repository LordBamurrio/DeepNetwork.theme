@echo off
setlocal
set "sourceFile=%~dp0DeepNetwork.theme.css"
set "bdThemesFolder=%AppData%\BetterDiscord\themes"
set "vcThemesFolder=%AppData%\Vencord\themes"
if exist "%bdThemesFolder%" (
    copy /Y "%sourceFile%" "%bdThemesFolder%" >nul
    if %ERRORLEVEL% EQU 0 (
        echo Copiato DeepNetwork.theme.css in BetterDiscord\themes.
    ) else (
        echo Errore durante la copia in BetterDiscord\themes.
    )
) else (
    echo Cartella BetterDiscord\themes non trovata.
)
if exist "%vcThemesFolder%" (
    copy /Y "%sourceFile%" "%vcThemesFolder%" >nul
    if %ERRORLEVEL% EQU 0 (
        echo Copiato DeepNetwork.theme.css in Vencord\themes.
    ) else (
        echo Errore durante la copia in Vencord\themes.
    )
) else (
    echo Cartella Vencord\themes non trovata.
)

pause
endlocal
