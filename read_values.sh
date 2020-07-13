#!/bin/bash
function operation4(){
	opr4=$(( ($1%$2)+$3 ))
	dict["opr4"]=$opr4
}
function operation3(){
	opr3=$(( $3+($1/$2) ))
	dict["opr3"]=$opr3
}
function operation1(){
        opr1=$(( $1+($2*$3) ))
	dict["opr1"]=$opr1
}
function operation2(){
	opr2=$(( ($1*$2)+$3 ))
	dict["opr2"]=$opr2
}
function store_Array(){
	arr=("$@")
}
function descending_sort(){
	n=${#arr[@]}
	for(( i=0;i<n;i++ ))
	do
		for (( j=0;j<n-i-1;j++ ))
		do
			if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
			then
				temp=${arr[j]}
				arr[j]=${arr[$((j+1))]}
				arr[$((j+1))]=$temp
			fi
		done
	done
}
function ascending_sort(){
        n=${#arr[@]}
        for(( i=0;i<n;i++ ))
        do
                for (( j=0;j<n-i-1;j++ ))
                do
                        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
                        then
                                temp=${arr[j]}
                                arr[j]=${arr[$((j+1))]}
                                arr[$((j+1))]=$temp
                        fi
                done
        done
}

read -p "Enter first value" num1
read -p "Enter second value" num2
read -p "Enter third value" num3
operation4 $num1 $num2 $num3
echo "The result of a%b+c is "$opr4
operation3 $num1 $num2 $num3
echo "The result of c+a/b is "$opr3
operation1 $num1 $num2 $num3
echo "The result of a+b*c is "$opr1
operation2 $num1 $num2 $num3
echo "The result of a*b+c is "$opr2
echo "Results added to dictionary:"
echo ${dict[@]}
echo "Results added to array from dictionary:"
store_Array ${dict[@]}
echo ${arr[@]}
echo "Array sorted in descending order:"
descending_sort ${arr[@]}
echo ${arr[@]}
echo "Array sorted in ascending order:"
ascending_sort ${arr[@]}
echo ${arr[@]}
