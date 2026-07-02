::Folders
set projectFolder=%cd%
set filesHdi=%projectFolder%\files
set scriptHdi=%projectFolder%\script
set asmFolder=%projectFolder%\asm

::Tools
set toolsFolder=%projectFolder%\tools
set juiceFolder=%toolsFolder%\juice
:: add tool folders to PATH so that we don't need to specify full paths later
@set PATH=%toolsFolder%;%juiceFolder%;%PATH%

::Roms Original
set hardDrive=%projectFolder%\roms\Dengeki Nurse.hdi

::Roms New
set hardDriveNew=%projectFolder%\roms\Dengeki Nurse (NEW).hdi

cd "%projectFolder%"

copy "%hardDrive%" "%hardDriveNew%"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Dump files
::::::::::::::::::::::::::::::::::::::::::::::::::::
rmdir /q /s "%filesHdi%"

mkdir "%filesHdi%"

ndc G "%hardDrive%" 0 "%filesHdi%"
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ASM
::::::::::::::::::::::::::::::::::::::::::::::::::::

cd "%asmFolder%"
nasm -f bin -o "%filesHdi%\NURSE\CMD\NRSOPEN.TCM" "NRSOPEN-EN.asm"
ndc U "%hardDriveNew%" 0 "NURSE\CMD\NRSOPEN.TCM" "%filesHdi%\NURSE\CMD\NRSOPEN.TCM" > NUL
@if errorlevel 1 echo "Error copying NRSOPEN.TCM to HDI!"

copy "%filesHdi%\NURSE\NRSFIGHT.CMD" "%asmFolder%\"
nasm -f bin -o "%filesHdi%\NURSE\NRSFIGHT.CMD" "NRSFIGHT-EN.asm"
ndc U "%hardDriveNew%" 0 "NURSE\NRSFIGHT.CMD" "%filesHdi%\NURSE\NRSFIGHT.CMD" > NUL
@if errorlevel 1 echo "Error copying NRSFIGHT.CMD to HDI!"

ndc U "%hardDriveNew%" 0 "NURSE\DAT\NRSENEMY.DAT" "%asmFolder%\NRSENEMY.DAT" > NUL
@if errorlevel 1 echo "Error copying NRSENEMY.DAT to HDI!"
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy over script files
::::::::::::::::::::::::::::::::::::::::::::::::::::
cd "%filesHdi%/NURSE/MES"
del "*.MES"
del "*.mes"
del "*.MES.rkt"
del "*.mes.rkt"
for /R "%scriptHdi%" %%f in (*.MES.rkt) do copy "%%f" "%filesHdi%/NURSE/MES"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Compile script
::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::
:: Disk 1
::::::::::::::::::::::::::
cd "%filesHdi%/NURSE/MES"
juice -cf --engine adv *.MES.rkt
ren *.MES.rkt.mes ????????????????????.MES
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Import script
::::::::::::::::::::::::::::::::::::::::::::::::::::

cd "%filesHdi%/NURSE/MES"
for /r %%i in (*.MES) do ndc U "%hardDriveNew%" 0 "NURSE\MES\%%~nxi" "%filesHdi%\NURSE\MES\%%~nxi"

@pause
