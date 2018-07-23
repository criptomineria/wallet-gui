@echo off
copy CMakeLists_Windows.txt CMakeLists.txt
del /s /q auruxcoin
echo d | xcopy /y /e \opt\auruxcoin auruxcoin
mkdir build
del /s /q build
cd build

cmake.exe -G  "Visual Studio 14 2015 Win64"  ..

msbuild auruxcoinWallet.sln /p:Configuration=Release
