@echo off

:menu
echo ������ѡ�
echo 1. ����boot
echo 2. ������ϣ�ˢ��boot
echo 0. �˳�����

set /p option=ѡ�� 

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
    echo ��Ч��ѡ��
    goto menu
)
