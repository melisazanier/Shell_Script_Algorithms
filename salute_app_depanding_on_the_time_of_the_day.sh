time="$(date +"%H")"
name=$USER
echo $time
echo $name

echo "$(date +"%p")"
if test $time -ge 6 -a $time -le 12
then
    echo "Buna dimineata $name"
elif test $time -gt 12 -a $time -le 18
then
    echo "Buna ziua $name"
elif test $time -gt 18 -a $time -le 22
then
     echo "Buna seara $name  You look lovely today"
elif test $time -gt 22 -a $time -lt 24
then

     echo "Noapte buna $name"


fi
