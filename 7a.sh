t=`who | tr ":" " " | tr -s " " | cut -d " " -f 4`
if [ $t -gt 4 ] && [ $t -le 12 ]
then
echo "GOOD Morning"
elif [ $t -gt 12 ] && [ $t -le 16 ]
then
echo "Good Afternoon"
elif [ $t -gt 16 ] && [ $t -le 20 ]
then
echo "Good Evening"
else
echo "Good night"
fi

