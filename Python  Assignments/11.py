#Python program to unzip a list of tuples into individual lists

tup=[(1,2),(3,4),(9,8)]
print(list(zip(*tup)))