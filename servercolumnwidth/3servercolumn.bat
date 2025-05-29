@echo off
setlocal

set "bdTheme=%AppData%\BetterDiscord\themes\DeepNetwork.theme.css"
set "vcTheme=%AppData%\Vencord\themes\DeepNetwork.theme.css"

if exist "%bdTheme%" (
    powershell -Command "(Get-Content '%bdTheme%') -replace '--server-listing-width: .*?;', '--server-listing-width: 184px;' | Set-Content '%bdTheme%'"
    if %ERRORLEVEL% EQU 0 (
        echo Tema BetterDiscord aggiornato correttamente a 184px.
    ) else (
        echo Errore durante la modifica del tema BetterDiscord.
    )
) else if exist "%vcTheme%" (
    powershell -Command "(Get-Content '%vcTheme%') -replace '--server-listing-width: .*?;', '--server-listing-width: 184px;' | Set-Content '%vcTheme%'"
    if %ERRORLEVEL% EQU 0 (
        echo Tema Vencord aggiornato correttamente a 184px.
    ) else (
        echo Errore durante la modifica del tema Vencord.
    )
) else (
    echo File tema non trovato in BetterDiscord né in Vencord.
)

pause
endlocal
