@echo off
title SzinkronSarok alternative downloader
cls

set disc=%~d0
set root=%~p0

echo SzinkronSarok alternative downloader :: by BNNDR

curl -L "https://fluffyquack.com/tools/modmanager.zip" -o "tmp_modmanager.zip"
cd "7zip"
7za.exe x "%disc%%root%tmp_modmanager.zip" -o"%disc%%root%" -aoa
cd ../
del "tmp_modmanager.zip"

curl -L "http://www.modaktivator.hu/Re2/Re2SzinkronDX12.pak" -o "tmp_Re2Szinkron.pak"
cd "7zip"
7za.exe x "%disc%%root%tmp_Re2Szinkron.pak" -o"%disc%%root%" -aoa
cd ../
del "tmp_Re2Szinkron.pak"

start Modmanager.exe