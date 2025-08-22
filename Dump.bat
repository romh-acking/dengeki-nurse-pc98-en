::Folders
set projectFolder=%cd%

set files=%projectFolder%\files

set script=%projectFolder%\script

::Tools
set toolsFolder=%projectFolder%\tools
set juiceFolder=%toolsFolder%\juice

::Roms Original
set hardDrive=%projectFolder%\roms\Dengeki Nurse.hdi

::Dump Files
rmdir /q /s "%files%"
rmdir /q /s "%script%"

mkdir "%files%"
mkdir "%script%"

"%toolsFolder%/NDC.exe" G "%hardDrive%" 0 "%files%"

:::::::::::::::::::::::::
::Dump script
:::::::::::::::::::::::::

cd "%files%\NURSE\MES"

"%juiceFolder%/juice.exe" -f -d --engine adv ***.MES
for /R "%files%\NURSE\MES" %%f in (*.mes.rkt) do copy "%%f" "%script%"

@pause
