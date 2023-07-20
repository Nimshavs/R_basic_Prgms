# Write a R program to create a vector which contains 10 random 
# integer values between -50 and +50.

r<-sample(-50:+50,10)
r

# Write a R program to find the maximum and the minimum value of a given vector.

a<-c(30,10,40,5,50)
max(a)
min(a)

#  Write a R program to create three vectors numeric data, character data and logical data. 
# Display the content of the vectors and their type.

x<-c(10,20)
class(x)
x
s<-c('a','e')
class(s)
s
d<-c(TRUE,FALSE)
d
class(d)

# Create vector with elements from 5 to 9 incrementing by 0.4. 
# Test whether a given vector contains a specified element.
f<-seq(5,9,0.4)
f
match(9,f)
8 %in% f

#  Write a R program to add 3 to each element in a given vector. 
# Print the original and new vector

a<-c(30,10,40,5,50)
a
a<-c(a+3)
a     

# Name the contents of the vector
names(a)<-c("maths","phy","bio","chem","geo")
names(a)
print(a)

