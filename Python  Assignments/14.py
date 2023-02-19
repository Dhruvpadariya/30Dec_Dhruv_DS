#Python program to find the highest 3 values in a dictionary

from heapq import nlargest

my_dict={'a':500, 'b':3876, 'c':560, 'd':682, 'e':400, 'f':386}
three_largest=nlargest(3,my_dict,key=my_dict.get)
print(three_largest)