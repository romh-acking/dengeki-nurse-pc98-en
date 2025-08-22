::Folders
set projectFolder=%cd%

set filesHdi=%projectFolder%\files

set scriptHdi=%projectFolder%\script

::Tools
set toolsFolder=%projectFolder%\tools
set juiceFolder=%toolsFolder%\juice

::Roms Original
set hardDrive=%projectFolder%\roms\Dengeki Nurse.hdi

::Roms New
set hardDriveNew=%projectFolder%\roms\Dengeki Nurse (NEW).hdi

cd "%projectFolder%"

copy "%hardDrive%" "%hardDriveNew%"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy over script files
::::::::::::::::::::::::::::::::::::::::::::::::::::
cd "%filesHdi%/NURSE/MES"
del "*.MES"
del "*.mes"
del "*.MES.rkt"
del "*.mes.rkt"
for /R "%scriptHdi%" %%f in (*.MES.rkt) do copy "%%f"  "%filesHdi%/NURSE/MES"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Compile script
::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::
:: Disk 1
::::::::::::::::::::::::::
cd "%filesHdi%/NURSE/MES"
"%juiceFolder%/juice.exe" -cf --engine ai5 *.MES.rkt
ren *.MES.rkt.mes ????????????????????.MES
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Import script
::::::::::::::::::::::::::::::::::::::::::::::::::::

cd "%filesHdi%/NURSE/MES"

for /r %%i in (*.MES) do (
	"%toolsFolder%/NDC.exe" D "%hardDriveNew%" 0 "NURSE/MES/%%~nxi"
	"%toolsFolder%/NDC.exe" P "%hardDriveNew%" 0 "%%i" "NURSE/MES"
)

@pause
