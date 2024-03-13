#!/usr/bin/bash
password="malefax@123";
while true; do
var=`lsusb | wc -l`;
if [ $var -gt 5 ]
then
chmod 444 /media/;
pass=`zenity --entry --width 500  --title "password authentication for device" --text "enter your password" --hide-text`;
	if [ $pass == $password ]
	then
	chmod 777 /media/;
	break;
	else
	eject /dev/sdb1;
	break;
	fi
else
continue;
fi
done







