@echo off
title Forlinx Docs Auto Update & Deploy
cd /d D:\Documents\GitHub\forlinx\forlinx-online-docs

echo [1/4] Committing changes to Git...
git add . >nul 2>&1
git commit -m "Auto update" >nul 2>&1
if %errorlevel% neq 0 (
    echo  Git commit failed or nothing to commit.
) else (
    echo  Git commit success.
)

git push origin main >nul 2>&1
if %errorlevel% neq 0 (
    echo  Git push failed.
) else (
    echo  Git push success.
)

echo [2/4] Building documentation...
mkdocs build >nul 2>&1
if %errorlevel% neq 0 (
    echo  MkDocs build failed.
    pause
    exit /b
) else (
    echo  MkDocs build success.
)

echo [3/4] Deploying to GitHub Pages...
mkdocs gh-deploy --clean >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ MkDocs deploy failed.
    pause
    exit /b
) else (
    echo ✅ MkDocs deployed successfully.
)

echo [4/4] Update complete.
pause
