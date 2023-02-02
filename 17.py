'''Python program using function to find the sum of odd series and even series
Odd series: 12/ 1! + 32/ 3! + 52/ 5!+……n
Even series: 22/ 2! + 42/ 4! + 62/ 6!+……n
'''
sum=0
n=int(input('Enter N: '))
x=int(input('Enter X:'))
a=0
k=int(input('Enter the odd or even value:'))

for i in range(1,n+1):
    sum=sum + (x+a)/k
    a=a+20;k=k+2

print('Sum of the series: ',sum)