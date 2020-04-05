@echo off

setlocal enableDelayedExpansion
set NL=^

set name=%1
set games=%2

rem thank you again stack overflow, https://stackoverflow.com/questions/3294599/do-batch-files-support-multiline-variables
set redisString=HSETNX servergroups.%name% name %name% !NL! ^
HSETNX servergroups.%name% prefix %name% !NL! ^
HSETNX servergroups.%name% ram 512 !NL! ^
HSETNX servergroups.%name% cpu 1 !NL! ^
HSETNX servergroups.%name% totalServers 0 !NL! ^
HSETNX servergroups.%name% joinableServers 0 !NL! ^
HSETNX servergroups.%name% portSection 50001 !NL! ^
HSETNX servergroups.%name% arcadeGroup true !NL! ^
HSETNX servergroups.%name% minPlayers 1 !NL! ^
HSETNX servergroups.%name% maxPlayers 16 !NL! ^
HSETNX servergroups.%name% pvp true !NL! ^
HSETNX servergroups.%name% tournament false !NL! ^
HSETNX servergroups.%name% tournamentPoints false !NL! ^
HSETNX servergroups.%name% serverType Minigames !NL! ^
HSETNX servergroups.%name% teamRejoin false !NL! ^
HSETNX servergroups.%name% teamAutoJoin true !NL! ^
HSETNX servergroups.%name% teamForceBalance true !NL! ^
HSETNX servergroups.%name% gameAutoStart true !NL! ^
HSETNX servergroups.%name% gameTimeout true !NL! ^
HSETNX servergroups.%name% rewardGems true !NL! ^
HSETNX servergroups.%name% rewardItems true !NL! ^
HSETNX servergroups.%name% rewardStats true !NL! ^
HSETNX servergroups.%name% rewardAchievements true !NL! ^
HSETNX servergroups.%name% hotbarInventory true !NL! ^
HSETNX servergroups.%name% hotbarHubClock true !NL! ^
HSETNX servergroups.%name% playerKickIdle true !NL! ^
HSETNX servergroups.%name% games %games% !NL! ^
HSETNX servergroups.%name% addNoCheat true !NL! ^
HSETNX servergroups.%name% addWorldEdit false !NL! ^
HSETNX servergroups.%name% worldZip arcade.zip !NL! ^
HSETNX servergroups.%name% configPath plugins/Arcade !NL! ^
HSETNX servergroups.%name% plugin Arcade.jar !NL! ^

type %redisString% | %cd%\..\redis-cli -x -n db0 > nul