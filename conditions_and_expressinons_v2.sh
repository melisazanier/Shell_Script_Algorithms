if test $# -ne 3
then
    echo "Numar invalid de argumente"
    exit -1
fi

if test $2 == '+' -o $2 == '-' -o $2 == '/'
then
    
    result=`expr $1 $2 $3`
    echo "Rezultatul operatiei este: $result"
    
elif test $2 == "mul"
then
    
    result=`expr $1 \* $3`
    echo "Rezultatul operatiei este: $result"
    
else
   
    echo "Operand invalid"

fi

exit 0


