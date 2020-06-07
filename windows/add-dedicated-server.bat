@echo off

setlocal enableDelayedExpansion
set NL=^

set name=%1
set publicAddress=%2
set privateAddress=%3
set region=%4
set cpu=%5
set ram=%6

set redisString=HMSET serverstatus.dedicated.%name% name %name% publicAddress %publicAddress% privateAddress %privateAddress% region %region% cpu %cpu% ram %ram% !NL! ^
SADD serverstatus.dedicated %name% !NL! ^

type %redisString% | %cd%\..\redis-cli -x -n db0 > nul