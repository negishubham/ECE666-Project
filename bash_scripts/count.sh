#script to count occurences of strings

proc=2
maxloads=("1000" 10000" "100000" "1000000) 

str1=LD
str2=IFETCH
str3="F>S "

echo ${proc}
for str in ${maxloads[@]}; do
	file=final_traces/mesi${proc}_final_${str}.txt
	echo ${file}
	echo LD
	grep -c LD ${file}
	
	echo IFETCH
	grep -c IFETCH ${file}
	
	echo "F>S "
	grep -c "F>S " ${file}
done


