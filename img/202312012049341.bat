@echo off

:menu
echo ������ѡ�
echo 1. ����boot
echo 2. ������ϣ�ˢ��boot
echo 0. �˳�����

set /p option=ѡ�� 

if "%option%"=="1" (
    echo fastboot boot android13-5.15.94_2023-05-boot.img
    goto menu
) else if "%option%"=="2" (
    echo fastboot flash boot android13-5.15.94_2023-05-boot.img
    goto menu
) else if "%option%"=="0" (
    exit
) else (
    echo ��Ч��ѡ��
    goto menu
)
�������