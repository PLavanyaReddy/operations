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
echo ${dict[@]}
store_Array ${dict[@]}
echo ${arr[@]}
