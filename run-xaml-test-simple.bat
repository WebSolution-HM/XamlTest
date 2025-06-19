@echo off
echo ⚡ 간단 XAML 테스트 실행...
echo 빌드하지 않고 바로 실행합니다.
echo.
cd /d "%~dp0\XamlTestApp"
echo 현재 경로: %CD%
echo.
dotnet run --no-build --verbosity quiet
if errorlevel 1 (
    echo.
    echo ❌ 실행 실패! 먼저 빌드가 필요할 수 있습니다.
    echo force-rebuild.bat를 실행해보세요.
    echo.
)
pause 