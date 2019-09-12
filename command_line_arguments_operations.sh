#in programul asta , exersam operatii si conditii simple in shell script

echo "Hello"
echo "Numarul de argumente este: $#"

if test $# -eq 0
then
    echo "Nu avem niciun argument"
    exit 1
fi

var=5
echo "variabila este: $var"
text=`ls -l / | tr -s ' ' | cut -f 5 -d ' '`
echo $text
result=1
for i in $text
do
    echo "elementul este : $i"
    result=`expr $result - $i`
    echo $result
done
echo `expr 3 % 4`

#echo $re
exit 0
