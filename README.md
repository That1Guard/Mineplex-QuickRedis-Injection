# Mineplex Quick Redis Injection
This will insert Mineplex Redis DB keys into redis-server without the need to manually type (or click) them in. <br />
You must have a runnable redis-server and redis-cli available for this injection to work.

Please note that these scripts assume that the IP:Port is set as "127.0.0.1:6379" with no set password. An option may be later added if warranted. <br />
Another thing to note is that this script only interacts with db0 (the only concernable db) and will flush it's entire contents in case from earlier attempts of setting up redis.

## Disclaimer
This deletes data in your redis server, therefor you may lose **everything** in the server once you run this. It is your responsibility to make sure you have backed up any data before running any scripts or files provided here. By using these scripts you understand the risk of data loss and agree that you have taken the proper precautions beforehand.

## Depends
* Runnable redis server with a `redis-cli` binary file

## Running
* Start your redis server
* Throw this into the root that contains the redis-cli binary file
* If you're on windows use the batch files in [/windows](/windows) and Linux/Mac users can use the scripts in [/linux](/linux).
* If you want to run a default installation (lobby + MIN only), run the file `default-install`. Once that is done, you don't need to run any steps below.
* Run the file called `flush-redis`. **This will flush db0 in your redis server**
* Run the file called `add-lobby-group`. You should now have redis set up for the lobby.
* To make an arcade server, run the file called `add-arcade-group`. This file takes to parameters, the name of the group (like MIN or SG) and the games on the server. Separate each of the games with a comma, example: `SurvivalGames,Micro`
* If you can set up the server monitor, you can add dedicated servers with the file `add-dedicated-server`. The file takes 6 parameters: the name of the server, public address of the server (IPv4), the private address (IPv4), the region (US/EU), cpu for it, and the ram

## How to run the files
* If you're on windows, run each file like `{file name}.bat {any parameters needed}` in command prompt.
* If you're on a linux distro or on a Mac, run each file like `./{file name}.sh {any parameters needed}` in terminal.
* On **both** systems make sure to separate parameters with spaces. 

    * Windows example: `{filename}.bat parameter1 parameter2 ...`
    * Linux example: `./{filename}.sh parameter1 parameter2 ...`
