@echo offrem 
rem publish.bat [대상폴더]

rem CALL !svnupdate.bat

SET TARGET=\\Databank\TeamWorks\SoulHunt\BuildServer\lastest\

if "%1" == "" goto :no_target_dir
SET TARGET=%1
:no_target_dir

rem del %TARGET%\*.* /s /q /f

mkdir %TARGET%
mkdir %TARGET%\field
mkdir %TARGET%\script
mkdir %TARGET%\system
mkdir %TARGET%\users
mkdir %TARGET%\zone

rem Data 전체 복사 -------------------------------
xcopy field %TARGET%\field /S /r /c
xcopy script %TARGET%\script /S /r /c
xcopy system %TARGET%\system /S /r /c
xcopy zone %TARGET%\zone /S /r /c

rem Root에 있는 파일 복사-------------------------
rem xcopy server.ini %TARGET%
xcopy Gameserver.exe %TARGET%
xcopy Gameserverd.exe %TARGET%
xcopy Gameserver.pdb %TARGET%
xcopy Gameserverd.pdb %TARGET%

xcopy server_rel.ini %TARGET%
xcopy DebugHelper.lua %TARGET%
xcopy lua51.dll %TARGET%
xcopy dbghelp.dll %TARGET%

xcopy Microsoft.VC80.CRT.manifest %TARGET%
xcopy msvcm80.dll %TARGET%
xcopy msvcp80.dll %TARGET%
xcopy msvcr80.dll %TARGET%



rem 익스플로러 창을 띄운다.
explorer %TARGET%

pause