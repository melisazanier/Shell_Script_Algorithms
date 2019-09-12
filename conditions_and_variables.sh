if test $# -ne 3
then
   echo "Invalid number of arguments"
   exit -1
fi

#doua variante de a scrie un if
if [ \( $1 -gt $2 \) -a \( $1 -gt $3 \) ]
then
    echo $1
elif test $2 -gt $1 -a $2 -gt $3
then
    echo $2
elif test $3 -gt $1 -a $3 -gt $1
then
    echo $3
     
fi
exit 0
