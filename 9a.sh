if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
	    l=` wc -l $1 | cut -d " " -f 1 `
		if [ $2 -le $3 -a $2 -le $l -a $3 -le $l ]
		 then
			 head -n $3 $1 | tail -n  +$2
		else
			echo "Out of range....!"
		fi
	else
		echo "Enter a valid file"
	fi
else
	echo "Enter the arguments : "
	echo "Syntax is : filename starting_line ending_line"
fi













