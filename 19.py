#Python function that takes a list and returns a new list with unique elements of the first list

def uniquelst(dat1):
    x=[]
    for p in dat1:
        if p not in x:
            x.append(p)
    return x
datalist=[]
n=int(input('Enter total elements in a list: '))
for k in range(n):
    dat=int(input('Enter in Data List: '))
    datalist.append(dat)

print('Original List',datalist)
print('New List:',uniquelst(datalist))