
SET SOURCE=..\..
SET TARGET=.

if "%1" == "" goto :no_src_dir
SET SOURCE=%1
:no_src_dir

if "%2" == "" goto :no_tar_dir
SET TARGET=%2
:no_tar_dir

xcopy %SOURCE%\Data\system\npc.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\talent.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\talent_hit_info.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\mesh_hit_info.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\xitem.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\fieldlist.xml %TARGET%\system\ /y
xcopy %SOURCE%\Data\system\zonelist.xml %TARGET%\system\ /y

xcopy %SOURCE%\Data\field\*.field.xml %TARGET%\field\ /y
