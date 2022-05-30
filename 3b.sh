echo "Enter a password "
stty -echo 
read passwd
stty echo
echo "Enter Confirmation password"
stty -echo
read cpasswd
stty echo
while [ "$passwd" != "$cpasswd" ]
do
clear
	echo "Enter confirmation Password correctly"
	stty -echo 
	read cpasswd
done
clear
echo " ____________Teminal locked__________ "
echo "_____________________________________ "
echo "     Enter Password to Unlock    "
stty -echo 
read passwd3
stty echo 
while [ "$passwd" != "$passwd3" ]
do
	echo "........................"
	echo " Password is Incorrect "
	echo " Enter Password that is entered at first: "
	stty -echo
	read passwd3
	stty echo
done
clear
	echo  "Congrats......Terminal Unlocked "
