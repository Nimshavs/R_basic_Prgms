#  Illustration of reading csv file from your current directory and manipulating the data read.

print(getwd()) #current working directory
setwd("E:/Sem 3/R programming")
print(getwd())
data<-read.csv("data1.csv")
print(data)
summary(data)
str(data)
is.data.frame(data)
print(ncol(data))
print(nrow(data))
sal<-max(data$salary)
sal
q<-subset(data,salary==max(salary))
q
retval <- subset( data, dept == "IT")
print(retval)
info <- subset(data, salary > 600 & dept == "IT")
print(info)

write.csv(q,"output.csv")
newdata<-read.csv("output.csv")
newdata
data()

CO2
View(CO2)
mydata<-CO2
?CO2
dim(mydata)
names(mydata)

#measures of central tendency
#measures of dispersion

# Illustration of readline() and scan() with different options for reading the different data types.

#Read a numeric vector from the console. 
#Create a function to sort the numeric vector in ascending order and multiply each element  by two.

n<-scan()
print(n)
n<-sort(n)
n
a<-n*2
a

#Read an alphanumeric vector from the console. Create a function that keep only the numbers and apply the function created in
#the previous question.For example, if the input is a vector w="a" "v" "7" "4" "q" , the function will return w=8 14.

read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "")

df<-read.csv('https://data.world/alexandra/music-scales')
df

#Extract Sepal.Length from the “iris” dataset and call the resulting vector mysepal.
#Get the summation, mean, median, max and min of mysepal. 
#Get the summary of mysepal and compare the results with the former.

iris
View(iris)
summary(iris)
mysepal<- iris[,1]
mysepal
sum(mysepal)
summary(mysepal)

#Compute the range of values for the sepal length using a user defined function for the Iris Dataset.
r<-function(mysepal){
  range<-max(mysepal)-min(mysepal)
  return(range)
}
r(iris$Sepal.Length)

#Compute the measures of central tendency (Mean, Median, Mode) of sepal length in the Iris Dataset
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
names(sort(-table(mysepal)))[1] #mode

#Compute the measures of dispersion (Range, InterQuartile Range, 
#Mean Deviation and Standard Deviation) of sepal length in the Iris Dataset.

#range - 2 ways
range(iris$Sepal.Length)
max(iris$Sepal.Length) - min(iris$Sepal.Length)  

#InterQuartile Range in 2 ways
IQR(iris$Sepal.Length)
quantile(iris$Sepal.Length,0.75)-quantile(iris$Sepal.Length,0.25)

#mean deviation
mad(iris$Sepal.Length)

#standard deviation
sd(iris$Sepal.Length)

#variance
var(iris$Sepal.Length)

# Compute first and third quartiles using the quantile() function.
quantile(iris$Sepal.Length,)

#Illustrate a function to compute the standard deviation (or variance) 
#of multiple variables at the same time (Iris dataset).
lapply(iris[,1:4],sd)

#Consider the following data values: 10, 20, 30, 40, 50, 60, 70, 80, 90, and 100. 
#What are the 10th and 90th percentiles? Hint: use function seq(from=,to=,by=) to create the data set. 
#Use the quantile() function to find the 10th and 90th percentile.

d<-seq(from=10,to=100,by=10)
d
quantile(d,probs = c(0.1,0.9))

#Consider a sample with these 15 values: 5, 1, 3, 9, 7, 1, 6, 11,5,1,1,3,2,1,8. Use the mode function to compute the mode. 
#Compare it with frequency of elements obtained using the table function.

v<-c(5, 1, 3, 9, 7, 1, 6, 11,5,1,1,3,2,1,8)
v
names(sort(-table(v)))[1]
table(v)

#Find the 90th percentile, the 1st, 2nd, and 3rd quartiles as well as the minimum and maximum values 
#of the LakeHuron data set (which is part of the R package). What is the mean? What is the median?

LakeHuron
View(LakeHuron)
quantile(LakeHuron,0.9)
quantile(LakeHuron)
min(LakeHuron)
max(LakeHuron)
mean(LakeHuron)
median(LakeHuron)
