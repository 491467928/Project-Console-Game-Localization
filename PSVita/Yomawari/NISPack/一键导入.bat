@echo off
@echo ҹ�hһ�����빤��
if exist "data.arc" (echo ok ) else (
	echo data.arc�����ڣ��޷�ע���ı�
	pause
	exit
)
python text_import.py
NISFONTBuilder.exe
rmdir /s/q patch
mkdir patch
@echo ���޸�importĿ¼�е�tga�ļ�Ϊ8λtga������������е���
xcopy image\*.* patch\ /s /h /d /c /y
xcopy import\*.* patch\ /s /h /d /c /y
pause
arc_patcher.py
@echo �ı��Ѿ�ע�뵽data.arc�У���ͨ��ftp��data.arc��eboot.bin���Ƶ�psv����
pause