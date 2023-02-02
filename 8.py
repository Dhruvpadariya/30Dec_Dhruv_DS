#Python program to check whether a list contains a sublist

list=['a','g','r',[1,2,3,4]]

for i in list:
    if len(i)>1:
        print('Sublist is present in List')
        break
else:
        print('Sublist is not present in List')