#Python program to find the second smallest number in a list

num=[9,5,7,4,2,8]

first=10000
second=10000

for i in num:
    if i<first:
        second=first
        first=i
    elif i>first and i<second:
        second=i

print(f'Second: {second}')