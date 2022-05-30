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
ls $i
echo "=================================="
cat $i
echo "=================================="
cp $i ~/mydir
else
echo "No such file exists"
fi
done
else
echo "Enter Parameter"
fi

