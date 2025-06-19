@echo off
echo 🔥 Hot Reload로 XAML 테스트 앱 실행 중...
echo 파일을 수정하고 저장하면 자동으로 재시작됩니다!
echo 종료하려면 Ctrl+C를 누르세요.
echo.
cd /d "%~dp0\XamlTestApp"
dotnet watch run 