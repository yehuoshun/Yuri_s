@echo off

reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%cd%\gamemd.exe" /t REG_SZ /d WIN2000 /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%cd%\ra2md.exe" /t REG_SZ /d WIN98 /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%cd%\yuri.exe" /t REG_SZ /d WIN98 /f

echo Windows Registry Editor Version 5.00                   > "%temp%\Sn_Changer.reg"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Westwood]                 >> "%temp%\Sn_Changer.reg"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Westwood\Yuri's Revenge]  >> "%temp%\Sn_Changer.reg"
set x=%random:~-3%%random:~-3%%random:~-3%%random:~-3%%random:~-3%%random:~-3%%random:~-3%%random:~-2%
echo "Serial"="%x%"                                         >> "%temp%\Sn_Changer.reg"
echo "Version"=dword:00010001                               >> "%temp%\Sn_Changer.reg"

regedit /s "%temp%\Sn_Changer.reg"
del "%temp%\Sn_Changer.reg"

start SetupReg.exe
