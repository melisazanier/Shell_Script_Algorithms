#echo "hello"
#`echo ls -l`
#`echo cd ..`

#`echo cd ..`
for d in */
do
    echo "Directoare:" 
    echo $d  
done

 echo "Fisiere:"
    for f in *.txt *.sh
    do
	`echo chmod +x $f`
	echo $f
    done

#`echo cd testShellScript`



