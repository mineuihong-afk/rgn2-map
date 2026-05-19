@echo off
:: ──────────────────────────────────────────
::  rgn2-map 빠른 배포 스크립트
::  사용법: deploy.bat "커밋 메시지"
:: ──────────────────────────────────────────
cd /d "%~dp0"

set MSG=%~1
if "%MSG%"=="" set MSG=update map

git add index.html
git commit -m "%MSG%"
git push origin master

echo.
echo ✓ 배포 완료: https://mineuihong-afk.github.io/rgn2-map/
echo   (GitHub Pages 반영까지 1-2분 소요)
