REM Set vc config
call "C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Auxiliary\Build\vcvarsall.bat" %1

REM Set perl config
if "%1"=="x64" perl Configure VC-WIN64A
if "%1"=="x86" perl Configure VC-WIN32

REM Build
nmake
nmake test
nmake install