ch=`date +%H`
lh=`who | tr -s " " | cut -d " " -f 4| tr ":" " " | cut -d " " -f 1`
cm=`date +%M`
lm=`who | tr -s " " | cut -d " " -f 4| tr ":" " " | cut -d " " -f 2`
wh=`expr $ch - $lh`
wm=`expr $cm - $lm`
if [ $wm -lt 0 ]
then
wh=`expr $wh - 1`
wm=`expr $wm + 60`
fi
echo "`whoami` worked for $wh hours $wm minutes"


