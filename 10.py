#Python program to get unique values from a list

list=[1,4,5,3,2,3,4,2,6]
unique_list=[]
for i in list:
    if i not in unique_list:
        unique_list.append(i)
print(unique_list)