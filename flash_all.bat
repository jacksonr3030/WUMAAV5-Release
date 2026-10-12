fastboot %* getvar product 2>&1 | findstr /r /c:"^product: *vince" || @echo "error : Missmatching image and device" & exit /B 1
rem fastboot %* erase bk12 2>&1
if not %ERRORLEVEL% == 0 exit /B 1
rem fastboot %* getvar soc_id 2>&1 | findstr /r /c:"^soc_id: *239" || echo Missmatching image and device in soc_id
rem fastboot %* getvar soc_id 2>&1 | findstr /r /c:"^soc_id: *239" || exit /B 1
rem fastboot %* oem device-info 2>&1 | findstr /r /c:"Device unlocked: true" || echo Device oem locked
rem fastboot %* oem device-info 2>&1 | findstr /r /c:"Device unlocked: true" || exit /B 1
fastboot %* flash modem %~dp0\images\NON-HLOS.bin || @echo "Flash modem error" && exit /B 1
fastboot %* flash sbl1 %~dp0\images\sbl1.mbn || @echo "Flash sbl1 error" && exit /B 1
fastboot %* flash sbl1bak %~dp0\images\sbl1.mbn || @echo "Flash sbl1bak error" && exit /B 1
fastboot %* flash rpm %~dp0\images\rpm.mbn || @echo "Flash rpm error" && exit /B 1
fastboot %* flash rpmbak %~dp0\images\rpm.mbn || @echo "Flash rpmbak error" && exit /B 1
fastboot %* flash tz %~dp0\images\tz.mbn || @echo "Flash tz error" && exit /B 1
fastboot %* flash tzbak %~dp0\images\tz.mbn || @echo "Flash tzbak error" && exit /B 1
fastboot %* flash devcfg %~dp0\images\devcfg.mbn || @echo "Flash devcfg error" && exit /B 1
fastboot %* flash devcfgbak %~dp0\images\devcfg.mbn || @echo "Flash devcfgbak error" && exit /B 1
fastboot %* flash dsp %~dp0\images\adspso.bin || @echo "Flash dsp error" && exit /B 1
fastboot %* flash sec %~dp0\images\sec.dat || @echo "Flash sec error" && exit /B 1
fastboot %* flash splash %~dp0\images\splash.img || @echo "Flash splash error" && exit /B 1
fastboot %* flash aboot %~dp0\images\emmc_appsboot.mbn || @echo "Flash aboot error" && exit /B 1
fastboot %* flash abootbak %~dp0\images\emmc_appsboot.mbn || @echo "Flash abootbak error" && exit /B 1
fastboot %* flash boot %~dp0\images\boot.img || @echo "Flash boot error" && exit /B 1
fastboot %* flash recovery %~dp0\images\recovery.img || @echo "Flash recovery error" && exit /B 1
fastboot %* flash system %~dp0\images\system.img || @echo "Flash system error" && exit /B 1
fastboot %* flash cache %~dp0\images\cache.img || @echo "Flash cache error" && exit /B 1
rem fastboot %* flash mdtp %~dp0\images\mdtp.img
fastboot %* flash lksecapp %~dp0\images\lksecapp.mbn || @echo "Flash lksecapp error" && exit /B 1
fastboot %* flash lksecappbak %~dp0\images\lksecapp.mbn || @echo "Flash lksecappbak error" && exit /B 1
fastboot %* flash cmnlib %~dp0\images\cmnlib.mbn || @echo "Flash cmnlib error" && exit /B 1
fastboot %* flash cmnlibbak %~dp0\images\cmnlib.mbn || @echo "Flash cmnlibbak error" && exit /B 1
fastboot %* flash cmnlib64 %~dp0\images\cmnlib64.mbn || @echo "Flash cmnlib64 error" && exit /B 1
fastboot %* flash cmnlib64bak %~dp0\images\cmnlib64.mbn || @echo "Flash cmnlib64bak error" && exit /B 1
fastboot %* flash keymaster %~dp0\images\keymaster.mbn || @echo "Flash keymaster error" && exit /B 1
fastboot %* flash keymasterbak %~dp0\images\keymaster.mbn || @echo "Flash keymasterbak error" && exit /B 1
fastboot %* flash cust %~dp0\images\cust.img || @echo "Flash cust error" && exit /B 1
fastboot %* flash userdata %~dp0\images\userdata.img || @echo "Flash userdata error" && exit /B 1
fastboot %* reboot
