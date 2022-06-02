if [ $# -ge 1 ]
then
if [ ! -e ~/mydir ]
then
mkdir ~/mydir
fi
for i in $*
do
if [ -f $i ]
then
if [ `ls ~/mydir | grep $i* | wc -l` -ne 0 ]
then
ls $i
echo "=================================="
cat $i
echo "=================================="
echo " $i exists in mydir"
continue 
fi
ls $i
cat $i
cp $i ~/mydir
else
echo "No such file exists"
fi
done
else
echo "Enter Parameter"
fi

