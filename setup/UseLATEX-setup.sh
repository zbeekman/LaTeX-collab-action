#!/bin/sh

set -e

echo "==> Fetch and install TeXLive"
wget https://gitlab.kitware.com/kmorel/UseLATEX/raw/master/UseLATEX.cmake
ls
ls /usr/share/cmake
mv UseLATEX.cmake /usr/share/cmake/Modules/UseLATEX.cmake
rm -rf /root/UseLATEX-setup.sh
