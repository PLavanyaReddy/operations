#!/bin/bash
function operation4(){
	opr4=$(( ($1%$2)+$3 ))
}
read -p "Enter first value" num1
read -p "Enter second value" num2
read -p "Enter third value" num3
operation4 $num1 $num2 $num3
echo "The result of a%b+c is "$opr4
