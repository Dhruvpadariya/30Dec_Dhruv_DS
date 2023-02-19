#Python Program to count the occurrences of each word in a given sentence

def count(str):
    
    dict= {}
    w=str.split()

    for i in w:

        if i in w:

            if i in dict:
                dict[i]+=1

            else:
                dict[i]=1

    return dict

sen=input('Enter a Sentence : ')

print(count(sen))