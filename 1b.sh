if [ $# -ne 0 ]
then
p=`echo $1 | tr "/" " "`
for i in $p 
do
mkdir $i
cd $i
done
echo "Directory created"
else
echo "Enter a parameter"
fi 
