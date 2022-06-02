if [ $# -eq 1 ]
then
grep $1 /etc/passwd >cd
if [ $? -eq -0 ]
then
echo " User Exists "
set -- `grep $1 /etc/passwd | tr ":" " " | cut -d " " -f 1,6`
p=`cut -d ":" -f 6 cd`
echo "User Name : $1 "
echo "Home Directory : $p"
else
echo "User Does not exists"
fi
else
echo "Enter a Parameter"
fi
