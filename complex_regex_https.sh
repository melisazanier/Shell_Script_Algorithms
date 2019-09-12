if test ! -f $2
then
    echo "File does not exist"
    exit -1
fi
#var1="https://www.anaaremere.com;00:11:22:33:44:55"
while IFS= read -r var
do
    echo $var
    if [ `echo  $var | egrep -x '((http://)|(https://))[a-z][.a-zA-Z0-9-]+((.com)|(.ro)|(.eu))[;][0-9A-F]{2}(\:[0-9A-F]{2}){5}$'` ]
    then
	echo "OK">>$4
    else
	echo "ERROR">>$4
    fi
    
done <$2
exit 0
