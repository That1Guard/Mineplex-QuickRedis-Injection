This will insert Mineplex Redis DB keys into redis-server without the need to manually type (or click) them in. <br />
You must have a runnable redis-server and redis-cli available for this injection to work.

To install, throw this into the root that contains redis-cli while redis-server is running.

Please note that this script assumes that the IP:Port is set as "127.0.0.1:6379" with no set password. An option may be later added if warranted. <br />
Another thing to note is that this script only interacts with db0 (the only concernable db) and will flush it's entire contents in case from earlier attempts of setting up redis.

Use [windows.bat](windows.bat) if you're on Windows and [linux.sh](linux.sh) if you're on MacOS or a Linux distro.

