#!/bin/bash
function operation3(){
	opr3=$(( $3+($1/$2) ))
function operation2(){
	opr2=$(( ($1*$2)+$3 ))
}
read -p "Enter first value" num1
read -p "Enter second value" num2
read -p "Enter third value" num3
operation3 $num1 $num2 $num3
echo "The result of c+a/b is "$opr3
operation2 $num1 $num2 $num3
echo "The result of a*b+c is "$opr2

