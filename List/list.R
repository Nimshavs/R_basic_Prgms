l<-list(10,20,30)
l[1]

#Create a list containing strings, numbers, vectors and a logical value.

v<-c(TRUE,FALSE)
v1<-c(30,40)
v2<-c("a","e")
l1<-list(v,v1,v2)
l1
l1[0]
l2<-list(1,c(10,20),c("hello"),"world")
l2


# Create a list of 5 strings. Check whether an item exists in the list.
# Illustrate addition and removal of an item in the list.

str<-list("apple","orange","banana","kiwi","guava")
match("apple",str)
"apple" %in% str
str<-append(str,"watermelon")
str
str1<-str[-2]
str1

#Create 3 lists and merge them together. Display the length of the merged list.

l3<-c(l1,str)
l3
length(l3)

# Create two lists having numbers. Convert the lists to vectors, 
# add the vectors and display the result.

l4<-list(10,20,30)
l5<-list(40,50,5)
print("Original vectors")
print(l4)
print(l5)
print("Converting the given list to vector")
v3<-unlist(l4)
v4<-unlist(l5)
print(v3)
print(v4)
v5 = v3 + v4
print(v5)

#  Create an even no list and an odd no list and merge it together as a even odd list

l4<-list(10,20,30)
l5<-list(40,50,5)




