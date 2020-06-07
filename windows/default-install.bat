@echo off
echo "Default install starting in a couple seconds"

rem see flush-redis.bat for why this is used to pause the script
ping -n 10 127.0.0.1 > nul
ping -n 10 127.0.0.1 > nul
ping -n 11 127.0.0.1 > nul

type %cd%\..\files\default-install.txt | %cd%\..\redis-cli > nul