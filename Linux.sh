echo "Warning: This flushes db0. You have 10 seconds to exit this script."

sleep 10

./redis-cli < fresh_install.txt
