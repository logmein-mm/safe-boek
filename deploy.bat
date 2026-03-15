@echo off
title SAFe Boek Website - Deploy naar GitHub
echo.
echo  ================================================
echo   SAFe Boek Website - Deploy naar GitHub Pages
echo  ================================================
echo.

where git >nul 2>&1
if %errorlevel% neq 0 (
    echo  [FOUT] Git is niet geinstalleerd.
    pause
    exit /b 1
)

cd /d "%~dp0"
echo  [1/5] Map: %cd%
echo.

git config user.name "Roel Peels"
git config user.email "safe-boek@majormilestones.nl"

if not exist ".git" (
    echo  [2/5] Git repo initialiseren...
    git init
    git branch -m main
) else (
    echo  [2/5] Git repo gevonden.
)
echo.

git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    git remote add origin https://github.com/logmein-mm/safe-boek.git
)

echo  [3/5] Remote content ophalen en mergen...
git fetch origin 2>nul
git reset --mixed origin/main 2>nul
echo.

echo  [4/5] Bestanden toevoegen en committen...
git add -A
git diff --cached --quiet 2>nul
if %errorlevel% equ 0 (
    echo  Alles is al gecommit.
) else (
    git commit -m "Website: Achter de Schermen van SAFe Transformaties"
)
echo.

echo  [5/5] Pushen naar GitHub...
git push -u origin main --force

if %errorlevel% neq 0 (
    echo.
    echo  [FOUT] Push mislukt.
    echo  Tip: gebruik een Personal Access Token als wachtwoord.
    echo  https://github.com/settings/tokens
    pause
    exit /b 1
)

echo.
echo  ================================================
echo   KLAAR!
echo.
echo   Repo: https://github.com/logmein-mm/safe-boek
echo.
echo   Activeer GitHub Pages:
echo   Settings - Pages - Branch: main - Save
echo.
echo   Site: https://logmein-mm.github.io/safe-boek/
echo  ================================================
echo.
pause
