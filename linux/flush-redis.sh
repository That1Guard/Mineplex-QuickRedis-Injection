echo "Flushing redis database in 10 seconds."

sleep 10

echo "FLUSHDB" |../redis-cli > /dev/null