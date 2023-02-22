import random
import sys
import time

start_time = time.time()

def power(x, y, p):

	# Initialize result
	res = 1

	# Update x if it is more than of equal to p
	x = x % p
	while(y > 0):

		#If y is odd, multiply x with result
		if(y & 1):
			res = (res * x) % p
		
		# y must be even now
		y = y >> 1
		x = (x * x) % p

	return res


# This function is called for all iter trials. It returns false if n is composite
# and returns false if n is probably prime. d is an odd number such that 
# d*2<sup>r</sup> = n-1 for some r >= 1

def millerTest(d, n):

	# Pick a random number in [2...n-2]
	# Corner cases make sure that n > 4
	a = 2 + random.randint(1, n-4)

	# Compute a^d % n
	x = power(a, d, n)

	if(x == 1 or x == n - 1):
		return True

	# Keep squaring x while one of the following doesn't happen
	# (i) d does not reach n-1
	# (ii) (x ^ 2) % n is not 1
	# (iii) (x ^ 2) % n is not n-1
	while(d != n - 1):
		x = (x * x) % n
		d *= 2

		if(x == 1):
			return False
		if(x == n - 1):
			return True
		
	# Return composite
	return False

# It returns false if n its composite and returns true if n is probably prime.
# k is an input parameter that determines accuracy level. Higher value of k
# indicates more accuracy.

def isPrime(n, k):

	#Corner cases
	if(n <= 1 or n == 4):
		return False
	if(n <= 3):
		return True

	# Find r such that n = r * 2^d + 1 for some r>= 1
	d = n - 1
	while (d % 2 == 0):
		d //= 2

	# Iterate given numbe of 'iter' times
	for i in range(iter):
		if(millerTest(d, n) == False):
			return False
	
	return True



# Driver Code
# Number of iterations
iter = int(input())

# Define first number: [first, last]
# first = the first number to check upwards
# last the last number to check
# value = how many numbers to check
first = int(input())
last = int(input())
value = last - first + 1

passed_prime_test = 0

for n in range(first, last):
	if(isPrime(n, iter)):
		passed_prime_test += 1
		print(n, end=" ")

f = open("time_miller.txt", "a")
f.write((str)(time.time() - start_time) + '\n')
f.close()

g = open("stat_miller.txt", "a")
g.write("Percentage of primes found:        " + (str)(passed_prime_test/value * 100) + '%' + '\n')
g.close()