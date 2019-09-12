var="00:11:22:33:aD"
#daca pun  -n dupa paranteza dreapta, nu mi merge cum trebuie programul , why imi intra mereu in true branch? 
if [ `echo $var | egrep -x '[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}$'` ]

then
    echo "true"
else
    echo "false"
fi
echo $var | egrep -x '[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}\:[a-fA-F0-9]{2}'
exit 0
