if [ $# -gt 0 ]
then
if [ -f $1 ]
then
set -- `ls -l $1 | tr -s " "` 
echo "File Permissions : $1"
echo "No. of links : $2 "
echo "User Name : $3"
echo "Group : $4 "
echo "File size : $5 "
echo "Date and Time : $6 $7 $8 "
echo "Name of the file : $9 "
else
echo "Please enter a valid file "
fi
else
echo "Enter a parameter"
fi 
