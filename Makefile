.PHONY: clean

build:

run-best:
	python3 MillerRabin.py < test.in > test.out

run-p2:
	python3 MillerRabin.py < test.in > test.out

run-p1:
	python3 Fermat.py < test.in > test.out

generate-output-p2:
	python3 MillerRabin.py < ./in/test1.in > ./miller_output/test1.out
	python3 MillerRabin.py < ./in/test2.in > ./miller_output/test2.out
	python3 MillerRabin.py < ./in/test3.in > ./miller_output/test3.out
	python3 MillerRabin.py < ./in/test4.in > ./miller_output/test4.out
	python3 MillerRabin.py < ./in/test5.in > ./miller_output/test5.out
	python3 MillerRabin.py < ./in/test6.in > ./miller_output/test6.out
	python3 MillerRabin.py < ./in/test7.in > ./miller_output/test7.out
	python3 MillerRabin.py < ./in/test8.in > ./miller_output/test8.out
	python3 MillerRabin.py < ./in/test9.in > ./miller_output/test9.out
	python3 MillerRabin.py < ./in/test10.in > ./miller_output/test10.out
	python3 MillerRabin.py < ./in/test11.in > ./miller_output/test11.out
	python3 MillerRabin.py < ./in/test12.in > ./miller_output/test12.out
	python3 MillerRabin.py < ./in/test13.in > ./miller_output/test13.out
	python3 MillerRabin.py < ./in/test14.in > ./miller_output/test14.out
	python3 MillerRabin.py < ./in/test15.in > ./miller_output/test15.out
	python3 MillerRabin.py < ./in/test16.in > ./miller_output/test16.out
	python3 MillerRabin.py < ./in/test17.in > ./miller_output/test17.out
	python3 MillerRabin.py < ./in/test18.in > ./miller_output/test18.out
	python3 MillerRabin.py < ./in/test19.in > ./miller_output/test19.out
	python3 MillerRabin.py < ./in/test20.in > ./miller_output/test20.out
	python3 MillerRabin.py < ./in/test21.in > ./miller_output/test21.out
	python3 MillerRabin.py < ./in/test22.in > ./miller_output/test22.out
	python3 MillerRabin.py < ./in/test23.in > ./miller_output/test23.out
	python3 MillerRabin.py < ./in/test24.in > ./miller_output/test24.out
	python3 MillerRabin.py < ./in/test25.in > ./miller_output/test25.out
	python3 MillerRabin.py < ./in/test26.in > ./miller_output/test26.out
	python3 MillerRabin.py < ./in/test27.in > ./miller_output/test27.out
	python3 MillerRabin.py < ./in/test28.in > ./miller_output/test28.out
	python3 MillerRabin.py < ./in/test29.in > ./miller_output/test29.out
	python3 MillerRabin.py < ./in/test30.in > ./miller_output/test30.out
	python3 MillerRabin.py < ./in/test31.in > ./miller_output/test31.out
	python3 MillerRabin.py < ./in/test32.in > ./miller_output/test32.out
	python3 MillerRabin.py < ./in/test33.in > ./miller_output/test33.out
	python3 MillerRabin.py < ./in/test34.in > ./miller_output/test34.out
	python3 MillerRabin.py < ./in/test35.in > ./miller_output/test35.out
	python3 MillerRabin.py < ./in/test36.in > ./miller_output/test36.out
	python3 MillerRabin.py < ./in/test37.in > ./miller_output/test37.out
	python3 MillerRabin.py < ./in/test38.in > ./miller_output/test38.out
	python3 MillerRabin.py < ./in/test39.in > ./miller_output/test39.out
	python3 MillerRabin.py < ./in/test40.in > ./miller_output/test40.out

generate-output-p1:
	python3 Fermat.py < ./in/test1.in > ./fermat_output/test1.out
	python3 Fermat.py < ./in/test2.in > ./fermat_output/test2.out
	python3 Fermat.py < ./in/test3.in > ./fermat_output/test3.out
	python3 Fermat.py < ./in/test4.in > ./fermat_output/test4.out
	python3 Fermat.py < ./in/test5.in > ./fermat_output/test5.out
	python3 Fermat.py < ./in/test6.in > ./fermat_output/test6.out
	python3 Fermat.py < ./in/test7.in > ./fermat_output/test7.out
	python3 Fermat.py < ./in/test8.in > ./fermat_output/test8.out
	python3 Fermat.py < ./in/test9.in > ./fermat_output/test9.out
	python3 Fermat.py < ./in/test10.in > ./fermat_output/test10.out
	python3 Fermat.py < ./in/test11.in > ./fermat_output/test11.out
	python3 Fermat.py < ./in/test12.in > ./fermat_output/test12.out
	python3 Fermat.py < ./in/test13.in > ./fermat_output/test13.out
	python3 Fermat.py < ./in/test14.in > ./fermat_output/test14.out
	python3 Fermat.py < ./in/test15.in > ./fermat_output/test15.out
	python3 Fermat.py < ./in/test16.in > ./fermat_output/test16.out
	python3 Fermat.py < ./in/test17.in > ./fermat_output/test17.out
	python3 Fermat.py < ./in/test18.in > ./fermat_output/test18.out
	python3 Fermat.py < ./in/test19.in > ./fermat_output/test19.out
	python3 Fermat.py < ./in/test20.in > ./fermat_output/test20.out
	python3 Fermat.py < ./in/test21.in > ./fermat_output/test21.out
	python3 Fermat.py < ./in/test22.in > ./fermat_output/test22.out
	python3 Fermat.py < ./in/test23.in > ./fermat_output/test23.out
	python3 Fermat.py < ./in/test24.in > ./fermat_output/test24.out
	python3 Fermat.py < ./in/test25.in > ./fermat_output/test25.out
	python3 Fermat.py < ./in/test26.in > ./fermat_output/test26.out
	python3 Fermat.py < ./in/test27.in > ./fermat_output/test27.out
	python3 Fermat.py < ./in/test28.in > ./fermat_output/test28.out
	python3 Fermat.py < ./in/test29.in > ./fermat_output/test29.out
	python3 Fermat.py < ./in/test30.in > ./fermat_output/test30.out
	python3 Fermat.py < ./in/test31.in > ./fermat_output/test31.out
	python3 Fermat.py < ./in/test32.in > ./fermat_output/test32.out
	python3 Fermat.py < ./in/test33.in > ./fermat_output/test33.out
	python3 Fermat.py < ./in/test34.in > ./fermat_output/test34.out
	python3 Fermat.py < ./in/test35.in > ./fermat_output/test35.out
	python3 Fermat.py < ./in/test36.in > ./fermat_output/test36.out
	python3 Fermat.py < ./in/test37.in > ./fermat_output/test37.out
	python3 Fermat.py < ./in/test38.in > ./fermat_output/test38.out
	python3 Fermat.py < ./in/test39.in > ./fermat_output/test39.out
	python3 Fermat.py < ./in/test40.in > ./fermat_output/test40.out

pack:
	zip -FSr alexandru.maciuca.zip README Makefile *.py in out miller_output fermat_output stat_fermat.txt stat_miller.txt time_fermat.txt time_miller.txt


clean:
		rm -rf test.in test.out
 		