@echo off
set title=�hTMD���ɧJ
if exist %~dp0ui_opencv.exe (
	set ui=\"%~dp0ui_opencv.exe\"
)
if exist %~dp0ui_opencv.py (
	for /f %%p in ('python -c "import sys; print(sys.executable)"') do (set ui=\"%%p\" \"%~dp0ui_opencv.py\")
)

echo ���� �ШϥΨt�κ޲z������
reg add HKCR\*\shell\%title%\command /f /d "%ui% \"%%1\""
cls
if errorlevel 1 goto failed
echo ���\
pause
exit /b

:failed
echo ����

pause
exit /b