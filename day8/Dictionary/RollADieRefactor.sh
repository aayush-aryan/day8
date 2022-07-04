#!/bin/bash -x

echo RandomDie digit is : $((RANDOM%6+1))

declare -A DieDict
freq1=0
freq2=0
freq3=0
freq4=0
freq5=0
freq6=0
index=1

while ((freq1<10 && freq2<10 && freq3<10 && freq4<10 && freq5<10 && freq6<10))
do
	randomCheck=$((RANDOM%6+1))
	DieDict[$index]=$randomCheck
	((index++))
	case $randomCheck in
				1)
				  ((freq1++))
				;;
				2)
				  ((freq2++))
				;;
				3)
				  ((freq3++))
				;;
				4)
				  ((freq4++))
				;;
				5)
				  ((freq5++))
				;;
				*)
				  ((freq6++))
				;;
	esac
done

echo number of times die rolled are : ${#DieDict[@]}
echo Die Outcomes are : ${DieDict[@]}


if (($freq1>$freq2&& $freq1>$freq3 && $freq1>$freq4 && $freq1>$freq5 && $freq1>$freq6))
then
        echo maximum times outcome of die is 1 : $freq1 times
elif (($freq2>$freq3 && $freq2>$freq4 && $freq2>$freq5 && $freq2>$freq6))
then
        echo maximum times outcome of die is 2 : $freq2 times
elif (($freq3>$freq4 && $freq3>$freq5 && $freq3>$freq6))
then
        echo maximum times outcome of die is 3: $freq3 times
elif (($freq4>$freq5 && $freq4>$freq6))
then
        echo maximum times outcomes of die is 4: $freq4 times
elif (($freq5>$freq6))
then
        echo "maximum times outcomes of die is 5 : $freq5 times"
else
	echo "maximum times outcomes of die is 6 : $freq6 times"
fi

if (($freq1<$freq2 && $freq1<$freq3 && $freq1<$freq4 && $freq1<$freq5 && $freq1<$freq6))
then
        echo minimum times outcomes of die is 1 : $freq1 times
elif (($freq2<$freq3 && $freq2<$freq4 && $freq2<$freq5 && $freq2<$freq6))
then
        echo minimum times outcomes of die is 2 : $freq2 times
elif (($freq3<$freq4 && $freq3<$freq5 && $freq3<$freq6))
then
        echo minimum times outcomes of die is 3 : $freq3 times
elif (($freq4<$freq5 && $freq4<$freq6))
then
        echo minimum times outcomes of die is 4 : $freq4 times
elif (($freq5<$freq6))
then
        echo minimum times outcome of die is 5 : $freq5 times
else
        echo minimum times outcome of die is 6: $freq6 times
fi
