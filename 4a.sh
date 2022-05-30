if [ $# -gt 0 ]
then
if [ -f $1 ]
then 
for i in $1
do
echo "______________________"
cat $i | tr "[a-z]" "[A-Z]"
echo "_____________________  "
done
else
echo "No such file exists"
fi
else
echo "Enter Parameter"
fi
