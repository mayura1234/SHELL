<<comment
 Write a shell script that folds long lines into 40 columns. Thus any line that exceeds 40
characters must be broken after 40th, a “/” is to be appended as the indication of folding and
processing is to be continued with the residue. The input is to be supplied through a text file
created by the user.
comment


echo "Enter the file name:"
read file
if [ -f $file ]
then 
while read line
do	
	start=1
	end=40
	length=`expr length "$line"`
	while [ $length -ge 40 ]
	do
		
		echo -n "`echo $line | cut -c $start-$end`\"
		length=`expr $length - $end`
		start=`expr $end  + 1`
		end=`expr $end + 40`
		
	done 
	echo -n "`echo $line | cut -c $start-`"
	echo " "


done < $file
else
	echo "$file doesn't exists"
fi
