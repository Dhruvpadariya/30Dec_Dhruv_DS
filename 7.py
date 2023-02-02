#Python Program to find Greatest Common Divisor of two numbers
a=int(input('Enter Number1: '))
b=int(input('Enter Number2: '))

if a<b:
    smaller=a
else:
    smaller=b

for i in range(1,smaller+1):
    if (a%i==0) and (b%i==0):
        gcd=i

print('gcd: ',gcd)