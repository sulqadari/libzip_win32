echo off
if exist build (
	echo Removind build dir
	rmdir /s /q build
)

set install_prefix=C:/msys64/mingw64

mkdir build
cd build
cmake -GNinja ../ -DCMAKE_INSTALL_PREFIX=%install_prefix%
cmake --build .

rem cmake --install . -v