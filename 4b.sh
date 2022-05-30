if [ $# -gt 0 ]
then
if [ $# -eq 2 ]
then
sp=$2
else
sp=$HOME
fi
file=$1
if [ -f $file ]
then
set -- `ls -i $file`
inum=$1
echo "INODE NO. is : $inum"
nl=`find $sp -inum $inum | wc -l`
if [ $nl -eq 1 ]
then
echo " $file has no links "
else
echo " $file has..." 
echo "`find $sp -inum $inum` "
fi
else
echo "Enter a valid file"
fi
else
echo "Enter the parameter"
fi  

