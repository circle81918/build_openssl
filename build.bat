set ROOT=%CD%
set SSL_ROOT=%ROOT%\openssl
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" %1
cd %SSL_ROOT%

REM Set build config
if "%1"=="x64" perl Configure VC-WIN64A no-shared --prefix=%SSL_ROOT%\output\x64\lib
if "%1"=="x86" perl Configure VC-WIN32 no-shared --prefix=%SSL_ROOT%\output\x86\lib 

REM Build
nmake
nmake install
