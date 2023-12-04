@echo off

:menu
echo 请输入选项：
echo 1. 测试boot
echo 2. 测试完毕，刷入boot
echo 0. 退出程序

set /p option=选择： 

if "%option%"=="1" (
    fastboot boot android13-5.15.94_2023-05-boot.img
    goto menu
) else if "%option%"=="2" (
    fastboot flash boot android13-5.15.94_2023-05-boot.img
	fastboot reboot
    goto menu
) else if "%option%"=="0" (
    exit
) else (
    echo 无效的选项
    goto menu
)
