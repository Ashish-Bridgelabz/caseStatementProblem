#!/bin/bash -x
read -p "Enter the number " number
case $number in
	1)
		echo "convert feet into inch"
		echo "enter feet"
		read feet
		inch=$((feet*12))
		echo "feet: $inch"
		;;
	2)
		echo "convert inch into feet"
		echo "enter inch"
		read inch
		feet=`echo "scale=3;$inch/12" |bc -l`
		echo "feet :feet"	
		;;
	3)
		echo "convert feet into meter"
		echo "enter feet"
		read feet
		meter=`echo "scale=3;$feet/3.128" |bc -l`
		echo "meter :$meter"	
		;;
	4)
		echo "convert meter into feet"
		echo "enter meter"
		read meter
		feet=`echo "scale=3;$meter*3.128" |bc -l`
		echo "feet:$feet"	
		;;
	*)
		echo "invalid number"
		;;
esac
