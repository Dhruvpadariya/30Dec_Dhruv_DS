#Python program to convert a list of tuples into a dictionary

tup=[('a',1), ('a',2), ('a',3), ('b',1), ('b',2), ('c',1)]

d={}

for a,b in tup:
    d.setdefault(a,[]).append(b)

print(d)