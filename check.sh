if ps aux | pgrep -f 'ptsminer' > /dev/null
then
echo "Looking good"
else
echo "`date`: restarting"
cd /$HOME/ptsminer/src
nohup tsocks ./ptsminer -poolip=ptsmine.beeeeer.org -poolport=1337 -poolpassword=helloworldtest -pooluser=PZTygehAqwKXwUQyCGRYpk9z56HKAzwVmp -genproclimit=4 &
fi
