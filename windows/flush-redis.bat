@echo off
echo "Flushing the redis server a few seconds, or like 30, or really whenever, depends on how fast you can ping localhost"

REM timeout /t 10 
rem this is literally the top solution on stackoverflow for pausing in batch files script don't crucify me please
ping -n 10 127.0.0.1 > nul
ping -n 10 127.0.0.1 > nul
ping -n 11 127.0.0.1 > nul

type "FLUSHDB" | %cd%\..\redis-cli > nul