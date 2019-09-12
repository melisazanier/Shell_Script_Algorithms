#aici verificam daca exista fisierul din care urmeaza sa citim
if test ! -f $2
then
    echo "File does not exist"
    exit -1
fi

#aici citim linie cu linie din fisier
while IFS= read -r var
do
    echo "$var"
    #aici verificam daca linia noastra se potriveste formatului din cerinta
    if [ `echo $var | egrep -x '[a-zA-Z][a-zA-Z0-9-]+@[a-zA-Z][a-zA-Z0-9]+((.com)|(.ro)|(.eu))[;][1-9]{1,3}(\.[0-9]{1,3}){3}$'` ]
    then
	#aici lucram specific cu <255 sau <=255 pentru adresele ip
	contor=2
	checked=0
	while test $contor -lt 6
	do
	    if test $contor -eq 2
	    then
		subsir=$(echo $var | cut  -d'.' -f $contor) #aici decupam din sir dupa niste separatoare
		subsir=$(echo $subsir | cut -d';'  -f 2)
	    else
		subsir=$(echo $var | cut -d'.' -f $contor)
	    fi
	    
	    if test  $subsir -gt 255 -o  $subsir -gt 254 -a $contor -eq 5
	    then
		checked=1
	    
	    fi
	    contor=`expr $contor + 1`
	done
	
	if test $checked -eq 0
	then
	    echo "OK">>$4
	else
	    echo "ERROR">>$4
	fi
	
    else
	echo "ERROR">>$4
    fi
    
done < "$2"
exit 0
