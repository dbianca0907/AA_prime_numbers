import random
import sys
import time

start_time = time.time()

# Iterative Function to calculate 
# (a^n)%p in O(logy)
def power(a, n, p):
	
	# Initialize result
	res = 1

	# Update 'a' if 'a' >= p
	a = a % p
	
	while n > 0:

		# If n is odd, multiply 'a' with result
		if n % 2:
			res = (res * a) % p
			n = n - 1
		else:
			a = (a ** 2) % p

			# n must be even now
			n = n // 2

		return res % p

# If n is prime, then always returns true,
# If n is composite than returns false with high
# probability.
# Higher values of iter increases probability of correct result

def gcd(a, b):

	if a < b:
		return gcd(a, b)
	elif a % b == 0:
		return b
	else:
		return gcd(b, a % b)

def isPrime(n, k):

	# Corner cases
	if n == 1 or n == 4:
		return False
	elif n == 2 or n == 3:
		return True

	# Try iter times

	else:
		for i in range(iter):

			# Pick a random number in [2...n-2]
			# Above corner cases make sure that n > 4
			a = random.randint(2, n - 2)

			if gcd(n, a) != 1:
				return False

			# Fermat's little theorem
			if power(a, n-1, n) != 1:
				return False
		
	return True

# Driver Code
# Number of iterations
iter = int(input())
iter = iter * 5

# Define first number: [first, last]
# first = the first number to check upwards
# last = the last number to check
# value = how many numbers to check
first = int(input())
last = int(input())
value = last - first + 1

passed_prime_test = 0

for n in range(first, last):
	if(isPrime(n, iter)):
		passed_prime_test += 1
		print(n, end=" ")

f = open("time_fermat.txt", "a")
f.write((str)(time.time() - start_time) + '\n')
f.close()

g = open("stat_fermat.txt", "a")
g.write("percentage of primes found:        " + (str)(passed_prime_test/value * 100) + '%' + '\n')
g.close()