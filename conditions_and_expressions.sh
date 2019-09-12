if test $# -ne 3
then
    echo "Numar invalid de argumente"
    exit -1
fi

case $2 in
    '+')  echo `expr $1 + $3`
	  ;;
    '-') echo `expr $1 - $3`
	 ;;
    '/') echo `expr $1 / $3`
	 ;;
    "mul") echo `expr $1 \* $3`
	   ;;
    *) echo "Operator invalid"
       exit -2
       ;;
    
 esac
	   
	   
