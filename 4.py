#Python program to get a single string from two given strings, separated by a space and swap the first two characters of each string

str_1='abcd'
str_2='wxyz'
temp=str_2
str_2=str_1[0:2] + str_2[2:]
str_1= temp[0:2] + str_1[2:]
print(str_2 +' ' + str_1)
