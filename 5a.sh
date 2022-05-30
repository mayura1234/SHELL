if [ $# -gt 0 ]
then
if [ -f $1 ]
then
file=$1
time=`ls -l $file | tr -s " " | cut -d " " -f 6,7,8`
echo "File Name is :     $file "
echo "Creation Time is : $time "
else
echo "It is not a file"
fi
else
echo "Please Enter a parameter"
fi
