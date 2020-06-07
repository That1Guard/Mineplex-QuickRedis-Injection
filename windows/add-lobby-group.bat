@echo off
echo "Adding lobby server group"
type %cd%\..\files\fresh_install.txt | %cd%\..\redis-cli -x -n db0 > nul