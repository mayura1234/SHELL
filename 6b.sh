

for i in `ls`
do
len=`expr length $i`
if [ $len -ge 10 ]
then
echo "$i : has more than 10 charecters" 
fi
done

