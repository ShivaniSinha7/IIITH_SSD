#question 1(i)
import csv
list1 = []
with open('lab_11_data.csv') as file:
    reader = csv.reader(file)
    for row in reader:
        list1.append(row[0:7])


#question 1(ii)
del list1[0]
list2 = list(filter(lambda x: False if float(x[-1]) < -3 else True, list1))
for i in list2:
    print(i)


#question 1(iii)
avg = lambda l1: sum(l1)/(len(l1))
l1=[]
for i in list2:
    l1.append(float(i[1].replace(",", "")))

l2=[]
for i in list2:
    l2.append(float(i[2].replace(",", "")))

l3=[]
for i in list2:
    l3.append(float(i[3].replace(",", "")))

final_list=[]
final_list.append(l1)
final_list.append(l2)
final_list.append(l3)

print(list(map(avg, final_list)))

with open("avg_output.txt", "w") as file1:
    for i in list(map(avg, final_list)):
        file1.write(str(i) + "\n")


#question 1(iv) #question 1(v)
with open('stock_output.txt', 'w') as file2:
    ch = input("Enter character: ")

    for i in list2:
        if (i[0][0] == ch):
            file2.write(str(i) + "\n")