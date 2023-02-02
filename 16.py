#Counting the frequencies in a list using a dictionary in Python

list=[1,1,2,3,2,4,4,5,5,3,6]
dict={}
for num in list:
    if num in dict:
        dict[num]=dict[num]+1
    else:
        dict[num]=1

print(dict)