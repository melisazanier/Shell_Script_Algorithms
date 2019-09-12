var="001122334455"
count=1
while test $count -le 11
do
     countm=`expr $count + 1`
     result=`echo $var | cut -c $count-$countm`
     if test $count -eq 1
     then
	  result1=$result
     else
	 result1="$result1:$result"
     fi
     
     echo $result
     count=`expr $count + 2`
done
echo $result1
exit 0
