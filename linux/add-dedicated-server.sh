if [ $# -eq 0 ] ; then
    echo 'No arguments specified!'
fi

name=$1
publicAddress=$2
privateAddress=$3
region=$4
cpu=$5
ram=$6

echo "Adding dedicated server ${name}"

echo "
HMSET serverstatus.dedicated.${name} name ${name} publicAddress ${publicAddress} privateAddress ${privateAddress} region ${region} cpu ${cpu} ram ${ram}
SADD serverstatus.dedicated ${name}
" | ../redis-cli > /dev/null