if [ $# -eq 1 ]
then 
if [ -d $1 ]
then
set -- `ls -lR $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9 | sort -n | tail -n 1`
echo " Name of the biggest file:  $2"
echo "Biggest file having file size :$1"
else
echo "Not a Directory"
fi
else
echo "Enter a Parameter"
fi 

