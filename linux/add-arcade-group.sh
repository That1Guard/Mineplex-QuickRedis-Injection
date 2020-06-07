if [ $# -eq 0 ] ; then
    echo 'No arguments specified!'
fi

name=$1
games=$2

echo "Making arcade group ${name} with games ${games} in 5 seconds"

sleep 5

# TODO @randomdevlol:
#   see if it's possible to have this stuff in a txt file & be able to change things like the name and games in the txt file
#   so we don't have to use multi line strings in both script & batch files
echo 
"
HSETNX servergroups.${name} name ${name}
HSETNX servergroups.${name} prefix ${name}
HSETNX servergroups.${name} ram 512
HSETNX servergroups.${name} cpu 1
HSETNX servergroups.${name} totalServers 0
HSETNX servergroups.${name} joinableServers 0
HSETNX servergroups.${name} portSection 50001
HSETNX servergroups.${name} arcadeGroup true
HSETNX servergroups.${name} minPlayers 1
HSETNX servergroups.${name} maxPlayers 16
HSETNX servergroups.${name} pvp true
HSETNX servergroups.${name} tournament false
HSETNX servergroups.${name} tournamentPoints false 
HSETNX servergroups.${name} serverType Minigames
HSETNX servergroups.${name} teamRejoin false
HSETNX servergroups.${name} teamAutoJoin true
HSETNX servergroups.${name} teamForceBalance true
HSETNX servergroups.${name} gameAutoStart true
HSETNX servergroups.${name} gameTimeout true
HSETNX servergroups.${name} rewardGems true
HSETNX servergroups.${name} rewardItems true
HSETNX servergroups.${name} rewardStats true
HSETNX servergroups.${name} rewardAchievements true
HSETNX servergroups.${name} hotbarInventory true
HSETNX servergroups.${name} hotbarHubClock true
HSETNX servergroups.${name} playerKickIdle true
HSETNX servergroups.${name} games ${games}
HSETNX servergroups.${name} addNoCheat true
HSETNX servergroups.${name} addWorldEdit false
HSETNX servergroups.${name} worldZip arcade.zip
HSETNX servergroups.${name} configPath plugins/Arcade
HSETNX servergroups.${name} plugin Arcade.jar
" | ../redis-cli > /dev/null