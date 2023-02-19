#Python Program to Find Factorial of Number Using Recursion

def fact(n):
    if n==1:
        return 1
    else:
        return n * fact(n-1)

n=int(input('Enter a number: '))
if n <=0:
    print('Factorial of number less than 1 does not exists')
else:
    print('Factorial of given number is',fact(n))