echo "elhostname: $1"
echo "eldomain: $2"

HOSTNAME=`hostname`

if [ ! -z "$1" ]; then HOSTNAME=$1; fi

echo $HOSTNAME

if [ ! -z "$2" ]
then
    CN="$HOSTNAME.$2" 
else
    CN=$HOSTNAME
fi

echo $CN