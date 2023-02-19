#Given a number n, write a python program to make and print the list of Fibonacci series up to n

n=int(input("Enter Number:"))
x=0
y=1
z=0
while z<=n:
    print(z)
    x=y
    y=z
    z=x+y