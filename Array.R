# Write a R program to create an array with three columns, 
# three rows, and two "tables", taking two vectors as input to the array. 

w <- c(1,2,3,23,12,33,5,6,7)
y <- c(43,3,2,5,6,7,1,8,2)
s <- array(c(w,y),dim = c(3,3,2))
s

# Write a R program to create a 3X3- 3-dimensional array of 27 elements.

m <- c(1:27)
n <- array(m,dim = c(3,3,3))
print(n)

# Name the rows, columns and the matrices.
row_names = c("row1","row2","row3")
col_names = c("col1","col2","col3")
m <- c("m1","m2","m3")
n <- array(c(1:27),dim = c(3,3,3),dimnames = list(row_names , col_names , m))
print(n)

# Write a R program to create an array of two 4x4 matrices each with 4 rows and 4 columns from two given vectors. 
# Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.

p <- c(1,4,2,5,2,6,9,8,10,11,34,23,12,32,19,14)
q <- c(2,4,1,3,6,12,2,3,4,6,43,12,56,43,66,33)
c <- array(c(p,q),dim = c(4,4,2))
print(c)
print(c[2,,2])
print(c[3,3,1])

#  For the above array, add the 2nd and 4th matrix and display the resultant matrix.
r <- array(c(p,q),dim = c(4,2,4))
print(r)
s <- (r[,,c(2)]+r[,,c(4)])
s
