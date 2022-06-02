echo "Enter first File name"
read f1
if [ -e $f1 ]
then
set -- `ls -l $f1`
fileper=$1
else
echo "File not found"
exit
fi
echo "Enter second File name"
read f2
if [ -e $f2 ]
then
set -- `ls -l $f2`
fileper2=$1
else
echo "Not found"
exit
fi
if [ $fileper = $fileper2 ]
then 
echo "Equal"
echo $fileper
else
echo "Not Equal"
echo "First Permission is $fileper"
echo "Second permission is $fileper2"
fi


