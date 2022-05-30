echo "Enter The first File : "
read file1
if [ -f $file1 ]
then 
set -- `ls -l $file1`
per1=$1
else
echo "No such file found"
fi
echo "Enter the second file : "
read file2
if [ -f $file2 ]
then
set -- `ls -l $file2`
per2=$1
else
echo "No such file found"
fi
if [ $per1 = $per2 ]
then 
	echo "Both having Same permission..."
	echo "The permission is $per1"
else
	echo "Permissions are different"
	echo "Permissions of first file is $per1"
	echo "Permission of second file is $per2"
fi
