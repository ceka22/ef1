@echo off
cd bin
Set COM=
Set /p COM=Number COM:
QSaharaServer.exe -p \\.\COM%COM% -s 13:prog_firehose_ddr.elf
ping 127.0.0.1 -n 03 > nul
fh_loader.exe --port=\\.\COM%COM%  --sendxml=1.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=2.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=3.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=4.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=5.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=6.xml --memoryname=UFS
fh_loader.exe --port=\\.\COM%COM%  --sendxml=7.xml --memoryname=UFS
pause >nul
