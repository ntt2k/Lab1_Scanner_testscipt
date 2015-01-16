#!/bin/bash

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
	echo "=========================================="
	echo "------------- Public Test $i--------------"
	echo ""
	java -classpath ./out/production/Lab1_Scanner crux.Compiler ./test/tests_public/test${i}.crx > ./test/tests_public/test${i}.out2 
	# dos2unix ./test/tests_public/test${i}.out2
	diff ./test/tests_public/test${i}.out ./test/tests_public/test${i}.out2

	echo
done

for i in 01 02
do
	echo "=========================================="
	echo "------------- My-Test Test $i--------------"
	echo ""
	java -classpath ./out/production/Lab1_Scanner crux.Compiler ./test/my_test/test${i}.crx > ./test/my_test/test${i}.out2 
	# dos2unix ./test/my_test/test${i}.out2
	diff ./test/my_test/test${i}.out ./test/my_test/test${i}.out2

	echo
done



