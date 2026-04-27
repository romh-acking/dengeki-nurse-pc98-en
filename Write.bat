::Folders
set projectFolder=%cd%
set filesHdi=%projectFolder%\files
set scriptHdi=%projectFolder%\script
set asmFolder=%projectFolder%\asm

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
:: Dump files
::::::::::::::::::::::::::::::::::::::::::::::::::::
rmdir /q /s "%filesHdi%"

mkdir "%filesHdi%"

"%toolsFolder%/NDC.exe" G "%hardDrive%" 0 "%filesHdi%"
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ASM
::::::::::::::::::::::::::::::::::::::::::::::::::::

"%toolsFolder%/nasm.exe" -f bin -o "%filesHdi%\NURSE\CMD\NRSOPEN.TCM" -l "NRSOPEN-EN.lst" "%asmFolder%/NRSOPEN-EN.asm"
del "NRSOPEN-EN.lst"
"%toolsFolder%/NDC.exe" U "%hardDriveNew%" 0 "NURSE\CMD\NRSOPEN.TCM" "%filesHdi%\NURSE\CMD\NRSOPEN.TCM" > NUL
@if errorlevel 1 echo "Error patching HDI file!"


copy "%asmFolder%\NRSFIGHT-EN.asm" "%filesHdi%\NURSE\NRSFIGHT-EN.asm"
cd "%filesHdi%\NURSE"
"%toolsFolder%/nasm.exe" -f bin -o "%filesHdi%\NURSE\NRSFIGHT-EN.CMD" "%filesHdi%\NURSE\NRSFIGHT-EN.asm"
del "NRSFIGHT.CMD"
move "NRSFIGHT-EN.CMD" "NRSFIGHT.CMD"
"%toolsFolder%/NDC.exe" U "%hardDriveNew%" 0 "NURSE\NRSFIGHT.CMD" "%filesHdi%\NURSE\NRSFIGHT.CMD" > NUL
@if errorlevel 1 echo "Error patching HDI file!"
@pause

"%toolsFolder%/NDC.exe" U "%hardDriveNew%" 0 "NURSE\DAT\NRSENEMY.DAT" "%asmFolder%\NRSENEMY.DAT" > NUL
@pause

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
"%juiceFolder%/juice.exe" -cf --engine adv *.MES.rkt
ren *.MES.rkt.mes ????????????????????.MES
@pause

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Import script
::::::::::::::::::::::::::::::::::::::::::::::::::::

cd "%filesHdi%/NURSE/MES"

for /r %%i in (*.MES) do (
	"%toolsFolder%/NDC.exe" U "%hardDriveNew%" 0 "NURSE\MES\%%~nxi" "%filesHdi%\NURSE\MES\%%~nxi"
)

@pause
