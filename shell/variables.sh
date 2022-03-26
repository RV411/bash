#!/bin/sh

#*separates every line of an argument
#? ./variables.sh adan ivan
#? adan
#? ivan
# for TOKEN in $*
# do
#     echo $TOKEN
# done

#* WHILE
# a=0
# while [$a -lt 10]
# do
#     echo $a
#     a= expr $a+1
# done

#* UNTIL
# a=0
# until [! $a -lt 10] # add  ! to negate
# do
#     echo $a
#     a= expr $a+1
# done

#* NESTED WHILE
# a=0
# while ["$a" -lt 10]
# do
    # b="$a"
    # while ["$b" -ge 0]
    # do
    #     echo -n "sb "
    #     b='expr $b-1'
    # done
#     echo
#     a='expr $a+1'
# done

#* IF
# if [$a -eq 5]
# then
#     break # or use #?continue
# fi

###################################################3
###################################################3
###################################################3
Hello(){
    echo "Hello $1 $2"
    return 10
}

#*Invoque function
Hello Adan ivan

#* capture value returned previously
ret=$?
echo "Return value us $ret"

###################################################3
###################################################3
###################################################3


#! chk_hosts.sh google.com 192.1.1.1
###################################################3
###################################################3
###################################################3
for i in $@
do
ping -c 1 $i &> /dev/null

if [$? -ne 0]; then
    echo "'date' : ping failed,$i host is down!" | mail -s $i "host is down!" 1234567@gmail.com
fi
done

###################################################3
###################################################3
###################################################3


#! backup.sh 
###################################################3
###################################################3
###################################################3
#*mount shared directory
mount -t cifs //192.168.1.18/BlogImages //home/ivan/shared -o username=ivan,password=ivan

#* what to backup
backupfiles="//home/ivan/shared"

#* where to backup
dest="/home/ivan/backup"

#*Create archive filename
day=$(date +%A)
hostname=$(hostname -s)
archivo_filename="$hostname-$day.tgz"

#*Print start status message
echo "Backing ip $backupfiles to $dest/$archivo_filename"
date
echo

#*Backup the files using tar
tar czf $dest/$archivo_filename $backupfiles

#*Print end status message
echo
echo "Backup Finished"

#*Long listing of files in $dest to check file sizes
ls -ln $dest

#*unmount
umount //home/ivan/shared

###################################################3
###################################################3
###################################################3





#* exit status
#? return 0 for succesful
#? return 1 for unsuccesful