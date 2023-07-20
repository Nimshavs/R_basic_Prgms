#  Write a R program to create a matrix taking a given vector of numbers as input. 
# Display the matrix and define the column and row names. Display the matrix.

row_names = c("row1", "row2", "row3", "row4")
col_names = c("col1", "col2", "col3", "col4")
M = matrix(c(1:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
print("Original Matrix:")
print(M)


# Write a R program to create three vectors a,b,c with 3 integers. Combine the three vectors to 
# become a 3×3 matrix where each column represents a vector. Print the content of the matrix.
a <- c(1,2,3)
b <- c(4,5,6)
c <- c(7,8,9)
m <- cbind(a,b,c)
print(m)

#  Illustrate how a matrix item, a column or a row is accessed in R. 
# Also, display the 2nd and 4th row with 1st and 3rd column for the matrix.
print(M[c(2,4),c(1,3)])  #2nd row & 4th row #1st column & 3rd column
 
# Illustrate how a row and a column can be added or removed.
n <- cbind(M,c(23,12,34,32))
print(n)
M <- M[-c(1),-c(1)]
print(M)

M[2:4,]
M[,2:3]

x <- as.vector(M)
x
