#!/bin/bash
function operation1(){
        opr1=$(( $1+($2*$3) ))
}
function operation2(){
	opr2=$(( ($1*$2)+$3 ))
}
read -p "Enter first value" num1
read -p "Enter second value" num2
read -p "Enter third value" num3
operation1 $num $num2 $num3
echo "The result of a+b*c is "$opr1
operation2 $num1 $num2 $num3
echo "The result of a*b+c is "$opr2

