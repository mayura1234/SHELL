if [ $# -ge 2 ] 
then 
if [ -f $1 ]
then 
for i in $*
do 
if [ $i != $1 ]
then
	if [ -f $i ]
	then
		for j in `cat $1`
		do
			count=`grep -owi $j $i | wc -l`  
			echo "Number of $j in $i is: $count"
		done
		echo "-------------------------------"
	else
		echo "$i doesn't exist"
	fi
fi 
done
else
echo "Enter pattern file"
fi
else
echo "Syntax is : 1.pattern 2.filename  format: sh.filename.sh pattern file(s)"
fi
