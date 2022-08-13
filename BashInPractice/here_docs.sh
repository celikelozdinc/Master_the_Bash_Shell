#!/bin/bash


echo "Num of lines: "; wc -l << STOP
Here is line1
Here is line2
Morevoer, here is line3
STOP

for ((i=0 ; i<5 ; i++))
do
cat << END
    Line1
        Line2
            Line3
END
done

wc -w <<< "I am the multi word sentence in a simple shell"