# factors - categorical data
is.factor(personal$gender1)
personal$gender1<-factor(personal$gender1)
is.factor(personal$gender1)

personal$gender1[7]<-"TG"
levels(personal$gender1)
levels(personal$gender1)<-c(levels(personal$gender1),"TG")
levels(personal$gender1)
personal$gender1[7]<-"TG"

g_factor<-gl(3,5,labels=c("MSc","MCA","MSW"))
g_factor


x<-scan(what = double())
print(x)
y<-scan(what = "")
print(y)

# Write a R program to find the levels of factor of a given vector. 
gender <- factor(c("male","female","female","male","male","female","male"))
gender
levels(gender)

# Write a R program to change the first level of a factor with another level of a given factor.
levels(gender)<-c(levels(gender),"TG")
levels(gender)
gender[3]<-"TG"
gender[3]
gender

# Write a R program to create a factor from data consisting of the names of months. 
# Also display the count of instances of each levels in the created factor.

month <- c("April","March","September","August","July","June","April","August","July","July")
month
print(table(month))

#Consider the factor responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree")).Later it was found that new a level "Strongly Disagree" exists. 
# Write an R expression that will include "strongly disagree" as new level attribute of the factor.

responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))
responses<-factor(responses,levels=c("Strongly Agree","Agree","Disagree","Strongly Disagree"))
levels(responses)

# If x <- factor(c("high", "low", "medium", "high", "high", "low", "medium")), 
# write an R expression that will provide unique numeric values for various levels of x with the following output:
# levels value
# 1 high 1
# 2 low 2
# 3 medium 3

x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))
x
data.frame(levels=unique(x),value=as.numeric(unique(x)))
